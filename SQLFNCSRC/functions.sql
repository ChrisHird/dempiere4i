
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *
 * converted to postgreSQL by Karsten Thiemann (Schaeffer AG), 
 * kthiemann@org
 *************************************************************************/
 /******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2015 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpya.com                                  *
 *****************************************************************************/
--
-- Function: uuid_generate_v3(uuid, text)
--
-- DROP FUNCTION uuid_generate_v3(uuid, text);
--

CREATE OR REPLACE FUNCTION uuid_generate_v3(
							namespace UUID,
							name CLOB)
  RETURNS UUID
	'$libdir/uuid-ossp', 'uuid_generate_v3'
LANGUAGE SQL
  COST 1;

--  
﻿-- Function: round(DECFLOAT(34), DECFLOAT(34))
--
-- DROP FUNCTION round(DECFLOAT(34), DECFLOAT(34));
--

CREATE OR REPLACE FUNCTION round(
							DECFLOAT(34),
							DECFLOAT(34))
  RETURNS DECFLOAT(34)
 BEGIN
	RETURN ROUND($1, cast($2 as integer));
 END;
LANGUAGE SQL
  COST 100;
  
--
﻿-- Function: invoiceopen(DECFLOAT(34), DECFLOAT(34))
--
-- DROP FUNCTION invoiceopen(DECFLOAT(34), DECFLOAT(34));
-- 

/***
 * Title:	Calculate Open Item Amount in Invoice Currency
 * Description:
 *	Add up total amount open for C_Invoice_ID if no split payment.
 *  Grand Total minus Sum of Allocations in Invoice Currency
 *
 *  For Split Payments:
 *  Allocate Payments starting from first schedule.
 *  Cannot be used for IsPaid as mutating
 *
 * Test:
 * 	SELECT C_InvoicePaySchedule_ID, DueAmt FROM C_InvoicePaySchedule WHERE C_Invoice_ID=109 ORDER BY DueDate;
 * 	SELECT invoiceOpen (109, null) FROM AD_System; - converted to default client currency
 * 	SELECT invoiceOpen (109, 11) FROM AD_System; - converted to default client currency
 * 	SELECT invoiceOpen (109, 102) FROM AD_System;
 * 	SELECT invoiceOpen (109, 103) FROM AD_System;
 ************************************************************************/
CREATE OR REPLACE FUNCTION invoiceopen(
							p_c_invoice_id DECFLOAT(34),
							p_c_invoicepayschedule_id DECFLOAT(34))
  RETURNS DECFLOAT(34) 
DECLARE
	v_Currency_ID		DECIMAL(10);
	v_TotalOpenAmt  	DECFLOAT(34) = 0;
	v_PaidAmt  	        DECFLOAT(34) = 0;
	v_Remaining	        DECFLOAT(34) = 0;
    v_MultiplierAP      DECFLOAT(34) = 0;
    v_MultiplierCM      DECFLOAT(34) = 0;
    v_Temp              DECFLOAT(34) = 0;
    v_Precision         DECFLOAT(34) = 0;
    v_Min            	DECFLOAT(34) = 0;
    ar					ROW;
    s					ROW;

BEGIN
	--	Get Currency
	BEGIN
		SELECT	MAX(C_Currency_ID), SUM(GrandTotal), MAX(MultiplierAP), MAX(Multiplier)
		INTO	v_Currency_ID, v_TotalOpenAmt, v_MultiplierAP, v_MultiplierCM
		FROM	C_Invoice_v		--	corrected for CM / Split Payment
		WHERE	C_Invoice_ID = p_C_Invoice_ID;
	EXCEPTION	--	Invoice in draft form
		WHEN OTHERS THEN
            	RAISE NOTICE 'InvoiceOpen - %', SQLERRM;
			RETURN NULL;
	END;

	SELECT StdPrecision
	    INTO v_Precision
	    FROM C_Currency
	    WHERE C_Currency_ID = v_Currency_ID;

	SELECT 1/10^v_Precision INTO v_Min;

	--	Calculate Allocated Amount
	FOR ar IN 
		SELECT	a.AD_Client_ID, a.AD_Org_ID,
		al.Amount, al.DiscountAmt, al.WriteOffAmt,
		a.C_Currency_ID, a.DateTrx
		FROM	C_AllocationLine al
		INNER JOIN C_AllocationHdr a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
		WHERE	al.C_Invoice_ID = p_C_Invoice_ID
          	AND   a.DocStatus IN('CO', 'CL')
	LOOP
        v_Temp = ar.Amount + ar.DisCountAmt + ar.WriteOffAmt;
		v_PaidAmt = v_PaidAmt
        -- Allocation
			+ currencyConvert(v_Temp * v_MultiplierAP,
				ar.C_Currency_ID, v_Currency_ID, ar.DateTrx, null, ar.AD_Client_ID, ar.AD_Org_ID);
      	RAISE NOTICE '   PaidAmt=% , Allocation= % * %', v_PaidAmt, v_Temp, v_MultiplierAP;
	END LOOP;

    --  Do we have a Payment Schedule ?
    IF (p_C_InvoicePaySchedule_ID > 0) THEN --   if not valid = lists invoice amount
        v_Remaining = v_PaidAmt;
        FOR s IN 
        	SELECT  C_InvoicePaySchedule_ID, DueAmt
	        FROM    C_InvoicePaySchedule
		WHERE	C_Invoice_ID = p_C_Invoice_ID
	        AND   IsValid='Y'
        	ORDER BY DueDate
        LOOP
            IF (s.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID) THEN
                v_TotalOpenAmt = (s.DueAmt*v_MultiplierCM) - v_Remaining;
                IF (s.DueAmt - v_Remaining < 0) THEN
                    v_TotalOpenAmt = 0;
                END IF;
            ELSE -- calculate amount, which can be allocated to next schedule
                v_Remaining = v_Remaining - s.DueAmt;
                IF (v_Remaining < 0) THEN
                    v_Remaining = 0;
                END IF;
            END IF;
        END LOOP;
    ELSE
        v_TotalOpenAmt = v_TotalOpenAmt - v_PaidAmt;
    END IF;
--  RAISE NOTICE ''== Total='' || v_TotalOpenAmt;

	--	Ignore Rounding
	IF (v_TotalOpenAmt > -v_Min AND v_TotalOpenAmt < v_Min) THEN
		v_TotalOpenAmt = 0;
	END IF;

	--	Round to currency precision
	v_TotalOpenAmt = ROUND(COALESCE(v_TotalOpenAmt,0), v_Precision);
	RETURN	v_TotalOpenAmt;
END;

LANGUAGE SQL
  COST 100;
  
--  
﻿-- Function: prodqtyreserved(DECFLOAT(34), DECFLOAT(34))
--
-- DROP FUNCTION prodqtyreserved(DECFLOAT(34), DECFLOAT(34));
--

CREATE OR REPLACE FUNCTION prodqtyreserved(
    p_product_id DECFLOAT(34),
    p_warehouse_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Warehouse_ID			DECFLOAT(34);
 	v_Quantity			DECFLOAT(34) =  99999;	--	unlimited
	v_IsBOM				CHAR(1);
	v_IsStocked			CHAR(1);
	v_ProductType			CHAR(1);
 	v_ProductQty			DECFLOAT(34);
	v_StdPrecision			int;
BEGIN
	--	Check Parameters
	v_Warehouse_ID = p_Warehouse_ID;
	IF (v_Warehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || v_Warehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
		  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM M_PRODUCT
		WHERE M_Product_ID=p_Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;

	--	No reservation for non-stocked
	IF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	-1*COALESCE(SUM(MovementQty), 0)
		  INTO	v_ProductQty
		FROM 	M_ProductionLine p
		WHERE M_Product_ID=p_Product_ID AND MovementQty < 0 AND p.Processed = 'N'
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE p.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=v_Warehouse_ID);
		--
		RETURN v_ProductQty;
	END IF;

	--	Unlimited (e.g. only services)
	IF (v_Quantity = 99999) THEN
		RETURN 0;
	END IF;

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=p_Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision);
	END IF;
	RETURN 0;
END;
LANGUAGE SQL
  COST 100;
  
--
﻿-- Function: getuuid()
--
-- DROP FUNCTION getuuid();
--

/***
 * Title:	Get UUID from DB Function
 * Description:
 *	Get UUID from DB function, it allows get a uuid from db function implemented for postgreSQL
 *
 * Test:
 * 	SELECT getUUID(); - Get UUID
 ************************************************************************/
 
CREATE OR REPLACE FUNCTION getuuid()
  RETURNS VARCHAR AS

 
 BEGIN
	RETURN uuid_generate_v1();
END;

LANGUAGE SQL
  COST 100;
  
--  
﻿-- Function: invoiceopentodate(DECFLOAT(34), DECFLOAT(34), date)
--
-- DROP FUNCTION invoiceopentodate(DECFLOAT(34), DECFLOAT(34), date);
--

/*************************************************************************
 * Title:	Get Due TIMESTAMP
 * Description:
 *	Returns the due TIMESTAMP
 * Test:
 *	select paymenttermDueDate(106, now()) from Test; => now()+30 days
 ************************************************************************/
 
CREATE OR REPLACE FUNCTION invoiceopentodate(
    p_c_invoice_id DECFLOAT(34),
    p_c_invoicepayschedule_id DECFLOAT(34),
    p_dateacct date)
  RETURNS DECFLOAT(34)

BEGIN
	RETURN InvoiceopenToDate(p_c_invoice_id, p_c_invoicepayschedule_id, 
	p_dateacct::TIMESTAMP);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: uuid_generate_v1mc()

-- DROP FUNCTION uuid_generate_v1mc();

CREATE OR REPLACE FUNCTION uuid_generate_v1mc()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_generate_v1mc'
LANGUAGE SQL
  COST 1;
  
--
﻿-- Function: prodqtyreserved(DECFLOAT(34), DECFLOAT(34), integer)
--
-- DROP FUNCTION prodqtyreserved(DECFLOAT(34), DECFLOAT(34), integer);
--


CREATE OR REPLACE FUNCTION prodqtyreserved(
    p_product_id DECFLOAT(34),
    p_warehouse_id DECFLOAT(34),
    p_dummy integer)
  RETURNS DECFLOAT(34)
DECLARE
    v_Warehouse_ID            DECFLOAT(34);
     v_Quantity            DECFLOAT(34) = 99999;    --    unlimited
    v_IsBOM                CHAR(1);
    v_IsStocked            CHAR(1);
    v_ProductType            CHAR(1);
     v_ProductQty            DECFLOAT(34);
    v_StdPrecision            int;
BEGIN
    --    Check Parameters
    v_Warehouse_ID = p_Warehouse_ID;
    IF (v_Warehouse_ID IS NULL) THEN
        RETURN 0;
    END IF;
--    DBMS_OUTPUT.PUT_LINE('Warehouse=' || v_Warehouse_ID);

    --    Check, if product exists and if it is stocked
    BEGIN
        SELECT    IsBOM, ProductType, IsStocked
          INTO    v_IsBOM, v_ProductType, v_IsStocked
        FROM M_PRODUCT
        WHERE M_Product_ID=p_Product_ID;
        --
    EXCEPTION    --    not found
        WHEN OTHERS THEN
            RETURN 0;
    END;

    --    No reservation for non-stocked
    IF (v_IsStocked='Y') THEN
        --    Get ProductQty
        SELECT     -1*COALESCE(SUM(MovementQty), 0)
          INTO    v_ProductQty
        FROM     M_ProductionLine p
        WHERE M_Product_ID=p_Product_ID AND MovementQty < 0 AND p.Processed = 'N'
          AND EXISTS (SELECT * FROM M_LOCATOR l WHERE p.M_Locator_ID=l.M_Locator_ID
              AND l.M_Warehouse_ID=v_Warehouse_ID);
        --
        RETURN v_ProductQty;
    END IF;

    --    Unlimited (e.g. only services)
    IF (v_Quantity = 99999) THEN
        RETURN 0;
    END IF;

    IF (v_Quantity > 0) THEN
        --    Get Rounding Precision for Product
        SELECT     COALESCE(MAX(u.StdPrecision), 0)
          INTO    v_StdPrecision
        FROM     C_UOM u, M_PRODUCT p
        WHERE     u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=p_Product_ID;
        --
        RETURN ROUND (v_Quantity, v_StdPrecision);
    END IF;
    RETURN 0;
END;
LANGUAGE SQL
  COST 100;
  
--  
﻿-- Function: firstof(TIMESTAMP, VARCHAR)
--
-- DROP FUNCTION firstof(TIMESTAMP, VARCHAR);
--

CREATE OR REPLACE FUNCTION firstof(
							TIMESTAMP,
							VARCHAR)
  RETURNS DATE
DECLARE
	datepart VARCHAR;
	datetime TIMESTAMP;
	offsetdays INTEGER;
BEGIN
	datepart = $2;
	offsetdays = 0;
	IF $2 IN ('') THEN
		datepart = 'millennium';
	ELSEIF $2 IN ('') THEN
		datepart = 'century';
	ELSEIF $2 IN ('') THEN
		datepart = 'decade';
	ELSEIF $2 IN ('IYYY','IY','I') THEN
		datepart = 'year';
	ELSEIF $2 IN ('SYYYY','YYYY','YEAR','SYEAR','YYY','YY','Y') THEN
		datepart = 'year';
	ELSEIF $2 IN ('Q') THEN
		datepart = 'quarter';
	ELSEIF $2 IN ('MONTH','MON','MM','RM') THEN
		datepart = 'month';
	ELSEIF $2 IN ('IW') THEN
		datepart = 'week';
	ELSEIF $2 IN ('W') THEN
		datepart = 'week';
	ELSEIF $2 IN ('DDD','DD','J') THEN
		datepart = 'day';
	ELSEIF $2 IN ('DAY','DY','D') THEN
		datepart = 'week';
		-- move to sunday to make it compatible with oracle and SQLJ
		offsetdays = -1;
	ELSEIF $2 IN ('HH','HH12','HH24') THEN
		datepart = 'hour';
	ELSEIF $2 IN ('MI') THEN
		datepart = 'minute';
	ELSEIF $2 IN ('') THEN
		datepart = 'second';
	ELSEIF $2 IN ('') THEN
		datepart = 'milliseconds';
	ELSEIF $2 IN ('') THEN
		datepart = 'microseconds';
	END IF;
	datetime = date_trunc(datepart, $1); 
RETURN cast(datetime as date) + offsetdays;
END;
LANGUAGE SQL
  COST 100;
  
--
﻿-- Function: trunc(interval)
--
-- DROP FUNCTION trunc(interval);
--

CREATE OR REPLACE FUNCTION trunc(i interval)
  RETURNS INT
BEGIN
	RETURN EXTRACT(DAY FROM i);
END;
LANGUAGE SQL
  COST 100;
  
--
﻿-- Function: nextidfunc(integer, VARCHAR)
--
-- DROP FUNCTION nextidfunc(integer, VARCHAR);
--

CREATE OR REPLACE FUNCTION nextidfunc(
    p_ad_sequence_id integer,
    p_system VARCHAR)
  RETURNS integer AS
DECLARE
          o_NextIDFunc INTEGER;
	  dummy INTEGER;
BEGIN
    o_NextIDFunc = nextid(p_AD_Sequence_ID, p_System);
    RETURN o_NextIDFunc;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: charat(VARCHAR, integer)

-- DROP FUNCTION charat(VARCHAR, integer);

CREATE OR REPLACE FUNCTION charat(
    VARCHAR,
    integer)
  RETURNS VARCHAR AS
 BEGIN
 RETURN SUBSTR($1, $2, 1);
 END;
LANGUAGE SQL
  COST 100;
﻿-- Function: bomqtyordered(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bomqtyordered(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyordered(
    p_product_id DECFLOAT(34),
    p_warehouse_id DECFLOAT(34),
    p_locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Warehouse_ID		DECFLOAT(34);
 	v_Quantity		DECFLOAT(34) =  99999;	--	unlimited
	v_IsBOM			CHAR(1);
	v_IsStocked		CHAR(1);
	v_ProductType		CHAR(1);
 	v_ProductQty		DECFLOAT(34);
	v_StdPrecision		int;
	bom 			record;	
BEGIN
	--	Check Parameters
	v_Warehouse_ID = p_Warehouse_ID;
	IF (v_Warehouse_ID IS NULL) THEN
		IF (p_Locator_ID IS NULL) THEN
			RETURN 0;
		ELSE
			SELECT 	MAX(M_Warehouse_ID) INTO v_Warehouse_ID
			FROM	M_LOCATOR
			WHERE	M_Locator_ID=p_Locator_ID;
		END IF;
	END IF;
	IF (v_Warehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || v_Warehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
		  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM 	M_PRODUCT
		WHERE 	M_Product_ID=p_Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;

	--	No reservation for non-stocked
	IF (v_IsBOM='N' AND (v_ProductType<>'I' OR v_IsStocked='N')) THEN
		RETURN 0;
	--	Stocked item
	ELSIF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	COALESCE(SUM(QtyOrdered), 0)
		  INTO	v_ProductQty
		FROM 	M_STORAGE s
		WHERE 	M_Product_ID=p_Product_ID
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=v_Warehouse_ID);
		--
		RETURN v_ProductQty;
	END IF;

	--	Go though BOM
--	DBMS_OUTPUT.PUT_LINE('BOM');
	FOR bom IN  		
	--	Get BOM Product info
	SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
	THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM , p.IsStocked, p.ProductType 
		FROM PP_PRODUCT_BOM b
			   INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
			   INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = p_Product_ID
	LOOP
		--	Stocked Items "leaf node"
		IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
			--	Get ProductQty
			SELECT 	COALESCE(SUM(QtyOrdered), 0)
			  INTO	v_ProductQty
			FROM 	M_STORAGE s
			WHERE 	M_Product_ID=bom.M_ProductBOM_ID
			  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
			  	AND l.M_Warehouse_ID=v_Warehouse_ID);
			--	Get Rounding Precision
			SELECT 	COALESCE(MAX(u.StdPrecision), 0)
			  INTO	v_StdPrecision
			FROM 	C_UOM u, M_PRODUCT p
			WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=bom.M_ProductBOM_ID;
			--	How much can we make with this product
			v_ProductQty = ROUND (v_ProductQty/bom.BOMQty, v_StdPrecision );

			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		--	Another BOM
		ELSIF (bom.IsBOM = 'Y') THEN
			v_ProductQty = Bomqtyordered (bom.M_ProductBOM_ID, v_Warehouse_ID, p_Locator_ID);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		END IF;
	END LOOP;	--	BOM

	--	Unlimited (e.g. only services)
	IF (v_Quantity = 99999) THEN
		RETURN 0;
	END IF;

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=p_Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision );
	END IF;
	--
	RETURN 0;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: maxpaydate(DECFLOAT(34))

-- DROP FUNCTION maxpaydate(DECFLOAT(34));

CREATE OR REPLACE FUNCTION maxpaydate(p_c_invoice_id DECFLOAT(34))
  RETURNS TIMESTAMP AS
DECLARE
    o_MaxPayDate  TIMESTAMP;
BEGIN
    SELECT maxpaydatetrx INTO o_MaxPayDate
	FROM C_Invoice i  
	LEFT JOIN (  SELECT max(p.datetrx) as maxpaydatetrx, al2.c_invoice_ID          
           FROM C_AllocationLine al2               
           INNER JOIN C_AllocationHdr ah on (al2.c_allocationhdr_id=ah.c_allocationhdr_id)  			 
           INNER JOIN c_Payment p on al2.c_Payment_ID = p.c_Payment_ID                
           WHERE al2.C_Charge_ID IS NULL AND ah.docstatus not in ('RE')
           GROUP BY al2.C_Invoice_ID) al1 on (i.C_Invoice_ID = al1.C_Invoice_ID)  
	WHERE i.C_Invoice_ID=p_C_Invoice_ID;

    RETURN o_MaxPayDate;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: paymenttermdiscount(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP, TIMESTAMP)

-- DROP FUNCTION paymenttermdiscount(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP, TIMESTAMP);

CREATE OR REPLACE FUNCTION paymenttermdiscount(
    amount DECFLOAT(34),
    currency_id DECFLOAT(34),
    paymentterm_id DECFLOAT(34),
    docdate TIMESTAMP,
    paydate TIMESTAMP)
  RETURNS DECFLOAT(34)
/*************************************************************************
 * Title:	Calculate Discount
 * Description:
 *	Calculate the allowable Discount Amount of the Payment Term
 *
 *	Test:	SELECT paymenttermDiscount(110, 103, 106, now(), now()) FROM TEST; => 2.20
 ************************************************************************/

DECLARE
	Discount		DECFLOAT(34) =  0;
	Discount1Date		TIMESTAMP;
	Discount2Date		TIMESTAMP;
	Add1Date		DECFLOAT(34) =  0;
	Add2Date		DECFLOAT(34) =  0;
	p   			RECORD;
BEGIN
	--	No Data - No Discount
	IF (Amount IS NULL OR PaymentTerm_ID IS NULL OR DocDate IS NULL) THEN
		RETURN 0;
	END IF;

	FOR p IN 
		SELECT	*
		FROM	C_PaymentTerm
		WHERE	C_PaymentTerm_ID = PaymentTerm_ID
	LOOP	--	for convineance only
		Discount1Date = TRUNC(DocDate + p.DiscountDays + p.GraceDays);
		Discount2Date = TRUNC(DocDate + p.DiscountDays2 + p.GraceDays);

		--	Next Business Day
		IF (p.IsNextBusinessDay='Y') THEN
			Discount1Date = nextBusinessDay(Discount1Date, p.AD_Client_ID);
			Discount2Date = nextBusinessDay(Discount2Date, p.AD_Client_ID);
		END IF;

		--	Discount 1
		IF (Discount1Date >= TRUNC(PayDate)) THEN
			Discount = Amount * p.Discount / 100;
		--	Discount 2
		ELSIF (Discount2Date >= TRUNC(PayDate)) THEN
			Discount = Amount * p.Discount2 / 100;
		END IF;	
	END LOOP;
	--
    RETURN ROUND(COALESCE(Discount,0), 2);	--	fixed rounding
END;

LANGUAGE SQL
  COST 100;
TIMESTAMP, TIMESTAMP)
﻿-- Function: paymenttermduedate(DECFLOAT(34), TIMESTAMP)

-- DROP FUNCTION paymenttermduedate(DECFLOAT(34), TIMESTAMP);

CREATE OR REPLACE FUNCTION paymenttermduedate(
    paymentterm_id DECFLOAT(34),
    docdate TIMESTAMP)
  RETURNS TIMESTAMP AS
/*************************************************************************
 * Title:	Get Due TIMESTAMP
 * Description:
 *	Returns the due TIMESTAMP
 * Test:
 *	select paymenttermDueDate(106, now()) from Test; => now()+30 days
 ************************************************************************/
DECLARE
 	Days				DECFLOAT(34) =  0;
	DueDate				TIMESTAMP = TRUNC(DocDate);
	--
	FirstDay			TIMESTAMP;
	NoDays				DECFLOAT(34);
	p   			RECORD;
BEGIN
	FOR p IN 
		SELECT	*
		FROM	C_PaymentTerm
		WHERE	C_PaymentTerm_ID = PaymentTerm_ID
	LOOP	--	for convineance only
		--	Due 15th of following month
		IF (p.IsDueFixed = 'Y') THEN		
			FirstDay = TRUNC(DocDate, 'MM');
			NoDays = EXTRACT(day FROM TRUNC(DocDate) - FirstDay);
			DueDate = FirstDay + (p.FixMonthDay-1);	--	starting on 1st
			DueDate = ADD_MONTHS(DueDate, p.FixMonthOffset);
			IF (NoDays > p.FixMonthCutoff) THEN
				DueDate = ADD_MONTHS(DueDate, 1);
			END IF;
		ELSE
			DueDate = TRUNC(DocDate) + p.NetDays;
		END IF;
	END LOOP;
	RETURN DueDate;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: daysbetween(TIMESTAMP, TIMESTAMP)

-- DROP FUNCTION daysbetween(TIMESTAMP, TIMESTAMP);

CREATE OR REPLACE FUNCTION daysbetween(
    p_date1 TIMESTAMP,
    p_date2 TIMESTAMP)
  RETURNS integer AS
BEGIN
	RETURN CAST(p_date1 AS DATE) - CAST(p_date2 as DATE);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: bomqtyreserved(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bomqtyreserved(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyreserved(
    p_product_id DECFLOAT(34),
    p_warehouse_id DECFLOAT(34),
    p_locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Warehouse_ID			DECFLOAT(34);
 	v_Quantity			DECFLOAT(34) =  99999;	--	unlimited
	v_IsBOM				CHAR(1);
	v_IsStocked			CHAR(1);
	v_ProductType			CHAR(1);
 	v_ProductQty			DECFLOAT(34);
	v_StdPrecision			int;
	bom				record;
BEGIN
	--	Check Parameters
	v_Warehouse_ID = p_Warehouse_ID;
	IF (v_Warehouse_ID IS NULL) THEN
		IF (p_Locator_ID IS NULL) THEN
			RETURN 0;
		ELSE
			SELECT 	MAX(M_Warehouse_ID) INTO v_Warehouse_ID
			FROM	M_LOCATOR
			WHERE	M_Locator_ID=p_Locator_ID;
		END IF;
	END IF;
	IF (v_Warehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || v_Warehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
		  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM M_PRODUCT
		WHERE M_Product_ID=p_Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;

	--	No reservation for non-stocked
	IF (v_IsBOM='N' AND (v_ProductType<>'I' OR v_IsStocked='N')) THEN
		RETURN 0;
	--	Stocked item
	ELSIF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	COALESCE(SUM(QtyReserved), 0)
		  INTO	v_ProductQty
		FROM 	M_STORAGE s
		WHERE M_Product_ID=p_Product_ID
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=v_Warehouse_ID);
		--
		RETURN v_ProductQty;
	END IF;

	--	Go though BOM
--	DBMS_OUTPUT.PUT_LINE('BOM');
	FOR bom IN 
	--	Get BOM Product info
	SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
	THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM , p.IsStocked, p.ProductType 
		FROM PP_PRODUCT_BOM b
			   INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
			   INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = p_Product_ID
	LOOP
		--	Stocked Items "leaf node"
		IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
			--	Get ProductQty
			SELECT 	COALESCE(SUM(QtyReserved), 0)
			  INTO	v_ProductQty
			FROM 	M_STORAGE s
			WHERE 	M_Product_ID=bom.M_ProductBOM_ID
			  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
			  	AND l.M_Warehouse_ID=v_Warehouse_ID);
			--	Get Rounding Precision
			SELECT 	COALESCE(MAX(u.StdPrecision), 0)
			  INTO	v_StdPrecision
			FROM 	C_UOM u, M_PRODUCT p
			WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=bom.M_ProductBOM_ID;
			--	How much can we make with this product
			v_ProductQty = ROUND (v_ProductQty/bom.BOMQty, v_StdPrecision);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		--	Another BOM
		ELSIF (bom.IsBOM = 'Y') THEN
			v_ProductQty = Bomqtyreserved (bom.M_ProductBOM_ID, v_Warehouse_ID, p_Locator_ID);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		END IF;
	END LOOP;	--	BOM

	--	Unlimited (e.g. only services)
	IF (v_Quantity = 99999) THEN
		RETURN 0;
	END IF;

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=p_Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision);
	END IF;
	RETURN 0;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: getdate()

-- DROP FUNCTION getdate();

CREATE OR REPLACE FUNCTION getdate()
  RETURNS TIMESTAMP AS
BEGIN
    RETURN now();
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: altercolumn(name, name, name, VARCHAR, VARCHAR)

-- DROP FUNCTION altercolumn(name, name, name, VARCHAR, VARCHAR);

CREATE OR REPLACE FUNCTION altercolumn(
    tablename name,
    columnname name,
    datatype name,
    nullclause VARCHAR,
    defaultclause VARCHAR)
  RETURNS void AS
declare
   command CLOB;
   viewtext text[];
   viewname name[];
   dropviews name[];
   i int;
   j int;
   v record;
   sqltype       CLOB;
   sqltype_short CLOB;
   typename name;
begin
   if datatype is not null then
	select pg_type.typname, format_type(pg_type.oid, pg_attribute.atttypmod)
        into typename, sqltype
        from pg_class, pg_attribute, pg_type
        where relname = lower(tablename)
        and relkind = 'r'
        and pg_class.oid = pg_attribute.attrelid
        and attname = lower(columnname)
        and atttypid = pg_type.oid;
        sqltype_short = sqltype;
        if typename = 'numeric' then
	   sqltype_short = replace(sqltype, ',0', '');
        elsif strpos(sqltype,'VARCHAR') = 1 then
	   sqltype_short = replace(sqltype, 'VARCHAR', 'varchar');
        elsif sqltype = 'TIMESTAMP' then
           sqltype_short = 'timestamp';
        end if;
        if lower(datatype) <> sqltype and lower(datatype) <> sqltype_short then
		i = 0;
		for v in select a.relname, a.oid 
			from pg_class a, pg_depend b, pg_depend c, pg_class d, pg_attribute e
			where a.oid = b.refobjid
			and b.objid = c.objid
			and b.refobjid <> c.refobjid
			and b.deptype = 'n'
			and c.refobjid = d.oid
			and d.relname = lower(tablename)
			and d.relkind = 'r'
			and d.oid = e.attrelid
			and e.attname = lower(columnname)
			and c.refobjsubid = e.attnum
			and a.relkind = 'v'
		 loop
		    i = i + 1;
		    viewtext[i] = pg_get_viewdef(v.oid);
		    viewname[i] = v.relname;
		end loop;
		if i > 0 then
		   begin
		     for j in 1 .. i loop
		        command = 'drop view ' || viewname[j];
		        execute command;
		        dropviews[j] = viewname[j];
		     end loop;
                     exception
                        when others then
                          i = array_upper(dropviews, 1);
                          if i > 0 then
                             for j in 1 .. i loop
                                command = 'create or replace view ' || dropviews[j] || 
								' as ' || viewtext[j];
		                execute command;
                             end loop;
                          end if;
                          raise exception 'Failed to recreate dependent view';
                   end;
		end if;
		command = 'alter table ' || lower(tablename) || ' alter column ' || 
		lower(columnname) || ' type ' || lower(datatype);
		execute command;
                i = array_upper(dropviews, 1);
		if i > 0 then
		   for j in 1 .. i loop
		     command = 'create or replace view ' || dropviews[j] || ' as ' 
			 || viewtext[j];
		     execute command;
		   end loop;
		end if;
        end if;
   end if;
   
   if defaultclause is not null then
       if lower(defaultclause) = 'null' then
          command = 'alter table ' || lower(tablename) || ' alter column ' || 
		  lower(columnname) || ' drop default ';
       else
	  command = 'alter table ' || lower(tablename) || ' alter column ' || 
	  lower(columnname) || ' set default ''' || defaultclause || '''';
       end if;
       execute command;
   end if;
   
   if nullclause is not null then
      if lower(nullclause) = 'not null' then
          command = 'alter table ' || lower(tablename) || ' alter column ' || 
		  lower(columnname) || ' set not null';
          execute command;
      elsif lower(nullclause) = 'null' then
          command = 'alter table ' || lower(tablename) || ' alter column ' || 
		  lower(columnname) || ' drop not null';
          execute command;
      end if;
   end if;
end;
LANGUAGE SQL
  COST 100;
﻿-- Function: dailysalarytodate(DECFLOAT(34), TIMESTAMP)

-- DROP FUNCTION dailysalarytodate(DECFLOAT(34), TIMESTAMP);

CREATE OR REPLACE FUNCTION dailysalarytodate(
    p_c_bpartner_id DECFLOAT(34),
    dateto TIMESTAMP)
  RETURNS DECFLOAT(34)
/***
 * Title:	Get Monthly Salary 
 * Description:
 *	Get Monthly Salary for a business partner flagged as employee, it search on 
 * employee detail for get result if the column MonthlySalary not is zero or null, else
 * get a concept for Monthly Salary
 *
 * Test:
 * 	SELECT dailySalaryToDate (113, null); - Get monthly salary for GardenAdmin BP now
 * 	SELECT dailySalaryToDate (113, now()); - Get monthly salary for GardenAdmin BP now
 ************************************************************************/
DECLARE
	v_DailySalary  	DECFLOAT(34) =  0;
	v_HR_Employee_ID	DECFLOAT(34) =  0;
BEGIN
	SELECT e.DailySalary, e.HR_Employee_ID 
	INTO v_DailySalary, v_HR_Employee_ID
	FROM HR_Employee e
	WHERE e.C_BPartner_ID = p_C_BPartner_ID
	AND e.IsActive = 'Y'
	AND e.StartDate <= COALESCE(DateTo, now())
	ORDER BY e.StartDate DESC
	LIMIT 1;

	--  Do we have a Payment Schedule ?
	IF (v_DailySalary IS NULL OR v_DailySalary = 0) THEN --   if it don't have employee salary
		SELECT ca.Amount INTO v_DailySalary
		FROM HR_Attribute ca
		WHERE ca.C_BPartner_ID = p_C_BPartner_ID
		AND ca.IsActive = 'Y'
		AND ca.ValidFrom <= COALESCE(DateTo, now())
		AND EXISTS(SELECT 1 
				FROM HR_Employee e 
				INNER JOIN HR_Payroll p ON(p.HR_Payroll_ID = e.HR_Payroll_ID)
				INNER JOIN HR_Contract c ON(c.HR_Contract_ID = p.HR_Contract_ID)
				WHERE e.HR_Employee_ID = v_HR_Employee_ID
				AND c.DailySalary_ID = ca.HR_Concept_ID)
		ORDER BY ca.ValidFrom DESC
		LIMIT 1;
	END IF;

	RETURN v_DailySalary;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: dailysalary(DECFLOAT(34))

-- DROP FUNCTION dailysalary(DECFLOAT(34));

CREATE OR REPLACE FUNCTION dailysalary(p_c_bpartner_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
/**
 * Title:	Get Daily Salary 
 * Description:
 *	Get Daily Salary for a business partner flagged as employee, it search on 
 * employee detail for get result if the column DailySalary not is zero or null, else
 * get a concept for Daily Salary
 *
 * Test:
 * 	SELECT dailySalary (113); - Get daily salary for GardenAdmin BP now
 * 	SELECT dailySalary (113); - Get daily salary for GardenAdmin BP now
 ************************************************************************/
BEGIN
	RETURN dailySalaryToDate(p_C_BPartner_ID, now());
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: trunc(TIMESTAMP)

-- DROP FUNCTION trunc(TIMESTAMP);

CREATE OR REPLACE FUNCTION trunc(datetime TIMESTAMP)
  RETURNS TIMESTAMP AS
BEGIN
	RETURN CAST(datetime AS DATE);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: get_sysconfig(VARCHAR, VARCHAR, DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION get_sysconfig(VARCHAR, VARCHAR, DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION get_sysconfig(
    sysconfig_name VARCHAR,
    defaultvalue VARCHAR,
    client_id DECFLOAT(34),
    org_id DECFLOAT(34))
  RETURNS VARCHAR AS
DECLARE
 	v_value  ANCHOR DATA TYPE TO ad_sysconfig.value;
BEGIN
    BEGIN
	    SELECT Value
	      INTO STRICT v_value
	      FROM AD_SysConfig WHERE Name=sysconfig_name AND AD_Client_ID IN (0, client_id) 
		  AND AD_Org_ID IN (0, org_id) AND IsActive='Y' 
	     ORDER BY AD_Client_ID DESC, AD_Org_ID DESC
	     LIMIT 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_value = defaultvalue;
    END;
	RETURN v_value;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: processreportsource(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- TIMESTAMP, TIMESTAMP)

-- DROP FUNCTION processreportsource(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- TIMESTAMP, TIMESTAMP);

CREATE OR REPLACE FUNCTION processreportsource(
    hr_process_id DECFLOAT(34),
    c_bpartner_id DECFLOAT(34),
    hr_processreportline_id DECFLOAT(34),
    _from TIMESTAMP,
    _to TIMESTAMP)
  RETURNS text AS

DECLARE
	p_HR_Process_ID		DECFLOAT(34) = $1;
	p_C_BPartner_ID		DECFLOAT(34) = $2;
	p_HR_ProcessReportLine_ID		DECFLOAT(34) = $3;
	p_ValidFrom		TIMESTAMP	= $4;
	p_ValidTo		TIMESTAMP	= $5;
	v_Description		CLOB;
	ds			RECORD;
BEGIN
	FOR ds IN
		SELECT rs.Prefix, 
			CASE 
				WHEN COALESCE(rs.ColumnType, m.ColumnType) = 'Q' THEN 
				CAST(ROUND(m.Qty, 2) AS TEXT) 
				WHEN COALESCE(rs.ColumnType, m.ColumnType) = 'A' THEN 
                    REPLACE(TO_CHAR(ROUND(m.Amount, 2), 
					COALESCE(rs.FormatPattern, '99G999G999G999D99')),' ','') 
				WHEN COALESCE(rs.ColumnType, m.ColumnType) = 'D' THEN 
				TO_CHAR(COALESCE(m.ServiceDate, m.ValidFrom), 
				COALESCE(rs.FormatPattern, 'DD/MM/YYYY'))
				WHEN COALESCE(rs.ColumnType, m.ColumnType) = 'T' THEN 
				COALESCE(m.Description, m.TextMsg, '')
			END MovementValue,
			rs.Suffix,rs.FormatPattern
		FROM HR_ProcessReportSource rs 
        INNER JOIN HR_Concept c ON(c.HR_Concept_ID = rs.HR_Concept_ID)
		INNER JOIN HR_Movement m ON(m.HR_Concept_ID = c.HR_Concept_ID)
		WHERE rs.HR_ProcessReportLine_ID = p_HR_ProcessReportLine_ID
		AND rs.IsActive = 'Y'
        AND m.HR_Process_ID = p_HR_Process_ID
		AND (m.C_BPartner_ID = p_C_BPartner_ID OR p_C_BPartner_ID = 0)
		AND m.ValidFrom BETWEEN p_ValidFrom AND p_ValidTo
		ORDER BY rs.SeqNo, m.ValidFrom
	LOOP
        RAISE NOTICE 'Format %',ds.FormatPattern;
		v_Description = COALESCE(v_Description, '') 
					|| COALESCE(ds.Prefix, '') 
					|| COALESCE(ds.MovementValue, '')
					|| COALESCE(ds.Suffix, '');
	END LOOP;
	RETURN v_Description;
END;

LANGUAGE SQL
  COST 100;
TIMESTAMP, TIMESTAMP)
﻿-- Function: instr(VARCHAR, VARCHAR, integer)

-- DROP FUNCTION instr(VARCHAR, VARCHAR, integer);

CREATE OR REPLACE FUNCTION instr(
    string VARCHAR,
    string_to_search VARCHAR,
    beg_index integer)
  RETURNS integer AS
DECLARE
    pos integer NOT NULL DEFAULT 0;
    temp_str varchar;
    beg integer;
    length integer;
    ss_length integer;
BEGIN
    IF beg_index > 0 THEN
        temp_str = substring(string FROM beg_index);
        pos = position(string_to_search IN temp_str);

        IF pos = 0 THEN
            RETURN 0;
        ELSE
            RETURN pos + beg_index - 1;
        END IF;
    ELSE
        ss_length = char_length(string_to_search);
        length = char_length(string);
        beg = length + beg_index - ss_length + 2;

        WHILE beg > 0 LOOP
            temp_str = substring(string FROM beg FOR ss_length);
            pos = position(string_to_search IN temp_str);

            IF pos > 0 THEN
                RETURN beg;
            END IF;

            beg = beg - 1;
        END LOOP;

        RETURN 0;
    END IF;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: bompricelist(DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bompricelist(DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bompricelist(
    product_id DECFLOAT(34),
    pricelist_version_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Price		DECFLOAT(34);
	v_ProductPrice	DECFLOAT(34);
	bom 		record;
BEGIN
	--	Try to get price from pricelist directly
	SELECT	COALESCE (SUM(PriceList), 0)
	INTO	v_Price
   	FROM	M_PRODUCTPRICE
	WHERE M_PriceList_Version_ID=PriceList_Version_ID AND M_Product_ID=Product_ID;
--	DBMS_OUTPUT.PUT_LINE('Price=' || Price);

	--	No Price - Check if BOM
	IF (v_Price = 0) THEN
		FOR bom IN 
		--Get BOM Product info
		SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
		THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM 
		FROM PP_PRODUCT_BOM b
				INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
				INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = Product_ID  
		LOOP
			v_ProductPrice = Bompricelist (bom.M_ProductBOM_ID, PriceList_Version_ID);
			v_Price = v_Price + (bom.BOMQty * v_ProductPrice);
		--	DBMS_OUTPUT.PUT_LINE('Qry=' || bom.BOMQty || ' @ ' || v_ProductPrice || ', Price=' || v_Price);
		END LOOP;	--	BOM
	END IF;
	--
	RETURN v_Price;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: bpartnerremitlocation(DECFLOAT(34))

-- DROP FUNCTION bpartnerremitlocation(DECFLOAT(34));

CREATE OR REPLACE FUNCTION bpartnerremitlocation(p_c_bpartner_id DECFLOAT(34))
  RETURNS DECFLOAT(34)

DECLARE
	v_C_Location_ID	DECFLOAT(34) =  NULL;
	l RECORD;

BEGIN
	FOR l IN 
		SELECT	IsRemitTo, C_Location_ID
		FROM	C_BPartner_Location
		WHERE	C_BPartner_ID=p_C_BPartner_ID
		ORDER BY IsRemitTo DESC
	LOOP
		IF (v_C_Location_ID IS NULL) THEN
			v_C_Location_ID = l.C_Location_ID;
		END IF;
	END LOOP;
	RETURN v_C_Location_ID;
	
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: instr(VARCHAR, VARCHAR)

-- DROP FUNCTION instr(VARCHAR, VARCHAR);

CREATE OR REPLACE FUNCTION instr(
    VARCHAR,
    VARCHAR)
  RETURNS integer AS
DECLARE
    pos integer;
BEGIN
    pos= instr($1, $2, 1);
    RETURN pos;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: acctbalance(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION acctbalance(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION acctbalance(
    p_account_id DECFLOAT(34),
    p_amtdr DECFLOAT(34),
    p_amtcr DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_balance	DECFLOAT(34);
	v_AccountType    ANCHOR DATA TYPE TO C_ElementValue.AccountType;
    	v_AccountSign    ANCHOR DATA TYPE TO C_ElementValue.AccountSign;

BEGIN
	    v_balance = p_AmtDr - p_AmtCr;
	    --  
	    IF (p_Account_ID > 0) THEN
	        SELECT AccountType, AccountSign
	          INTO v_AccountType, v_AccountSign
	        FROM C_ElementValue
	        WHERE C_ElementValue_ID=p_Account_ID;
	   --   DBMS_OUTPUT.PUT_LINE('Type=' || v_AccountType || ' - Sign=' || v_AccountSign);
	        --  Natural Account Sign
	        IF (v_AccountSign='N') THEN
	            IF (v_AccountType IN ('A','E')) THEN
	                v_AccountSign = 'D';
	            ELSE
	                v_AccountSign = 'C';
	            END IF;
	        --  DBMS_OUTPUT.PUT_LINE('Type=' || v_AccountType || ' - Sign=' || v_AccountSign);
	        END IF;
	        --  Debit Balance
	        IF (v_AccountSign = 'C') THEN
	            v_balance = p_AmtCr - p_AmtDr;
	        END IF;
	    END IF;
	    --
	    RETURN v_balance;
	EXCEPTION WHEN OTHERS THEN
	    -- In case Acct not found
    	RETURN  p_AmtDr - p_AmtCr;
	
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: monthlysalarytodate(DECFLOAT(34), TIMESTAMP)

-- DROP FUNCTION monthlysalarytodate(DECFLOAT(34), TIMESTAMP);

CREATE OR REPLACE FUNCTION monthlysalarytodate(
    p_c_bpartner_id DECFLOAT(34),
    dateto TIMESTAMP)
  RETURNS DECFLOAT(34)
/**
 * Title:	Get Monthly Salary 
 * Description:
 *	Get Monthly Salary for a business partner flagged as employee, it search on 
 * employee detail for get result if the column MonthlySalary not is zero or null, else
 * get a concept for Monthly Salary
 *
 * Test:
 * 	SELECT monthlySalaryToDate (113, null); - Get monthly salary for GardenAdmin BP now
 * 	SELECT monthlySalaryToDate (113, now()); - Get monthly salary for GardenAdmin BP now
 ************************************************************************/
DECLARE
	v_MonthlySalary  	DECFLOAT(34) =  0;
	v_HR_Employee_ID	DECFLOAT(34) =  0;
BEGIN
	SELECT e.MonthlySalary, e.HR_Employee_ID 
	INTO v_MonthlySalary, v_HR_Employee_ID
	FROM HR_Employee e
	WHERE e.C_BPartner_ID = p_C_BPartner_ID
	AND e.IsActive = 'Y'
	AND e.StartDate <= COALESCE(DateTo, now())
	ORDER BY e.StartDate DESC
	LIMIT 1;

	--  Do we have a Payment Schedule ?
	IF (v_MonthlySalary IS NULL OR v_MonthlySalary = 0) THEN --   if it don't have employee salary
		SELECT ca.Amount INTO v_MonthlySalary
		FROM HR_Attribute ca
		WHERE ca.C_BPartner_ID = p_C_BPartner_ID
		AND ca.IsActive = 'Y'
		AND ca.ValidFrom <= COALESCE(DateTo, now())
		AND EXISTS(SELECT 1 
				FROM HR_Employee e 
				INNER JOIN HR_Payroll p ON(p.HR_Payroll_ID = e.HR_Payroll_ID)
				INNER JOIN HR_Contract c ON(c.HR_Contract_ID = p.HR_Contract_ID)
				WHERE e.HR_Employee_ID = v_HR_Employee_ID
				AND c.MonthlySalary_ID = ca.HR_Concept_ID)
		ORDER BY ca.ValidFrom DESC
		LIMIT 1;
	END IF;

	RETURN v_MonthlySalary;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: addyears(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION addyears(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION addyears(
    datetime TIMESTAMP,
    years DECFLOAT(34))
  RETURNS date AS
/**
 * Title:	Add Years to Date
 * Description:
 *	Add years to date
 *
 * Test:
 * 	SELECT addyears(now(), 3) FROM DUAL; - Add years to current date
 ************************************************************************/
declare duration varchar;
BEGIN
	if datetime is null or years is null then
		return null;
	end if;
	duration = years || ' years';	 
	return cast(datetime + cast(duration as interval) as date);
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: nextbusinessday(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION nextbusinessday(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION nextbusinessday(
    p_date TIMESTAMP,
    p_ad_client_id DECFLOAT(34))
  RETURNS TIMESTAMP AS
/**
*This file is part of Adempiere ERP Bazaar
*http://www.org
*
*Copyright (C) 2007 Teo Sarca
*
*This program is free software; you can redistribute it and/or
*modify it under the terms of the GNU General Public License
*as published by the Free Software Foundation; either version 2
*of the License, or (at your option) any later version.
*
*This program is distributed in the hope that it will be useful,
*but WITHOUT ANY WARRANTY; without even the implied warranty of
*MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
*GNU General Public License for more details.
*
*You should have received a copy of the GNU General Public License
*along with this program; if not, write to the Free Software
*Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.of
*
* Converted to PostgreSQL by Tony Snook, 
* tspc@dodo.com.au 
*/
DECLARE
	v_nextDate	date = trunc(p_Date);
	v_offset	numeric	= 0;
	v_Saturday	numeric	= TO_CHAR(TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'D');
	v_Sunday	numeric	= (case when v_Saturday = 7 then 1 else v_Saturday + 1 end);
	v_isHoliday	boolean	= true;
	nbd C_NonBusinessDay%ROWTYPE;
begin
	v_isHoliday = true;
	loop
		SELECT	CASE TO_CHAR(v_nextDate,'D') 
					WHEN v_Saturday THEN 2
					WHEN v_Sunday THEN 1
					ELSE 0
				END INTO v_offset;
		v_nextDate = v_nextDate + v_offset::integer;
		v_isHoliday = false;
		FOR nbd IN	SELECT * 
					FROM C_NonBusinessDay 
					WHERE AD_Client_ID=p_AD_Client_ID and IsActive ='Y' and Date1 >= v_nextDate
					ORDER BY Date1
		LOOP
			exit when v_nextDate <> trunc(nbd.Date1);
			v_nextDate = v_nextDate + 1;
			v_isHoliday = true;
		end loop;
		exit when v_isHoliday=false;
	end loop;
	--
	return v_nextDate::TIMESTAMP;
end;
LANGUAGE SQL
  COST 100;
﻿-- Function: adddays(interval, DECFLOAT(34))

-- DROP FUNCTION adddays(interval, DECFLOAT(34));

CREATE OR REPLACE FUNCTION adddays(
    inter interval,
    days DECFLOAT(34))
  RETURNS integer AS
BEGIN
RETURN ( EXTRACT( EPOCH FROM ( inter ) ) / 86400 ) + days;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: invoicepaid(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION invoicepaid(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION invoicepaid(
    p_c_invoice_id DECFLOAT(34),
    p_c_currency_id DECFLOAT(34),
    p_multiplierap DECFLOAT(34))
  RETURNS DECFLOAT(34)
/**
 * Title:	Calculate Paid/Allocated amount in Currency
 * Description:
 *	Add up total amount paid for for C_Invoice_ID.
 *  Split Payments are ignored.
 *  all allocation amounts  converted to invoice C_Currency_ID
 *	round it to the nearest cent
 *	and adjust for CreditMemos by using C_Invoice_v
 *  and for Payments with the multiplierAP (-1, 1)
 *
 *
 * Test:
    SELECT C_Invoice_ID, IsPaid, IsSOTrx, GrandTotal, 
    invoicePaid (C_Invoice_ID, C_Currency_ID, MultiplierAP)
    FROM C_Invoice_v;
 *	
 ************************************************************************/
DECLARE
	v_MultiplierAP		DECFLOAT(34) =  1;
	v_PaymentAmt		DECFLOAT(34) =  0;
	ar			RECORD;

BEGIN
	--	Default
	IF (p_MultiplierAP IS NOT NULL) THEN
		v_MultiplierAP = p_MultiplierAP;
	END IF;
	--	Calculate Allocated Amount
	FOR ar IN 
		SELECT	a.AD_Client_ID, a.AD_Org_ID, 
		al.Amount, al.DiscountAmt, al.WriteOffAmt, 
		a.C_Currency_ID, a.DateTrx
		FROM	C_AllocationLine al
		INNER JOIN C_AllocationHdr a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
		WHERE	al.C_Invoice_ID = p_C_Invoice_ID
		AND   a.DocStatus IN('CO', 'CL')
	LOOP
		v_PaymentAmt = v_PaymentAmt
			+ currencyConvert(ar.Amount + ar.DisCountAmt + ar.WriteOffAmt,
				ar.C_Currency_ID, p_C_Currency_ID, ar.DateTrx, null, ar.AD_Client_ID, ar.AD_Org_ID);
	END LOOP;
	--
	RETURN	ROUND(COALESCE(v_PaymentAmt,0), 2) * v_MultiplierAP;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: uuid_ns_url()

-- DROP FUNCTION uuid_ns_url();

CREATE OR REPLACE FUNCTION uuid_ns_url()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_ns_url'
LANGUAGE SQL
  COST 1;
﻿-- Function: uuid_nil()

-- DROP FUNCTION uuid_nil();

CREATE OR REPLACE FUNCTION uuid_nil()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_nil'
LANGUAGE SQL
  COST 1;
﻿-- Function: instr(VARCHAR, VARCHAR, integer, integer)

-- DROP FUNCTION instr(VARCHAR, VARCHAR, integer, integer);

CREATE OR REPLACE FUNCTION instr(
    string VARCHAR,
    string_to_search VARCHAR,
    beg_index integer,
    occur_index integer)
  RETURNS integer AS
DECLARE
    pos integer NOT NULL DEFAULT 0;
    occur_number integer NOT NULL DEFAULT 0;
    temp_str varchar;
    beg integer;
    i integer;
    length integer;
    ss_length integer;
BEGIN
    IF beg_index > 0 THEN
        beg = beg_index;
        temp_str = substring(string FROM beg_index);

        FOR i IN 1..occur_index LOOP
            pos = position(string_to_search IN temp_str);

            IF i = 1 THEN
                beg = beg + pos - 1;
            ELSE
                beg = beg + pos;
            END IF;

            temp_str = substring(string FROM beg + 1);
        END LOOP;

        IF pos = 0 THEN
            RETURN 0;
        ELSE
            RETURN beg;
        END IF;
    ELSE
        ss_length = char_length(string_to_search);
        length = char_length(string);
        beg = length + beg_index - ss_length + 2;

        WHILE beg > 0 LOOP
            temp_str = substring(string FROM beg FOR ss_length);
            pos = position(string_to_search IN temp_str);

            IF pos > 0 THEN
                occur_number = occur_number + 1;

                IF occur_number = occur_index THEN
                    RETURN beg;
                END IF;
            END IF;

            beg = beg - 1;
        END LOOP;

        RETURN 0;
    END IF;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: bompricestd(DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bompricestd(DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bompricestd(
    product_id DECFLOAT(34),
    pricelist_version_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Price		DECFLOAT(34);
	v_ProductPrice	DECFLOAT(34);
	bom		record;
BEGIN
	--	Try to get price from pricelist directly
	SELECT	COALESCE(SUM(PriceStd), 0)
	INTO	v_Price
   	FROM	M_PRODUCTPRICE
	WHERE M_PriceList_Version_ID=PriceList_Version_ID AND M_Product_ID=Product_ID;
--	DBMS_OUTPUT.PUT_LINE('Price=' || v_Price);

	--	No Price - Check if BOM
	IF (v_Price = 0) THEN
		FOR bom IN 		--	Get BOM Product info
		SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
		THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM 
		FROM PP_PRODUCT_BOM b
				INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
				INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = Product_ID  
		LOOP
			v_ProductPrice = Bompricestd (bom.M_ProductBOM_ID, PriceList_Version_ID);
			v_Price = v_Price + (bom.BOMQty * v_ProductPrice);
		--	DBMS_OUTPUT.PUT_LINE('Price=' || v_Price);
		END LOOP;	--	BOM
	END IF;
	--
	RETURN v_Price;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: uuid_ns_x500()

-- DROP FUNCTION uuid_ns_x500();

CREATE OR REPLACE FUNCTION uuid_ns_x500()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_ns_x500'
LANGUAGE SQL
  COST 1;
﻿-- Function: trunc(TIMESTAMP, VARCHAR)

-- DROP FUNCTION trunc(TIMESTAMP, VARCHAR);

CREATE OR REPLACE FUNCTION trunc(
    datetime TIMESTAMP,
    format VARCHAR)
  RETURNS date AS
BEGIN
	IF format = 'Q' THEN
		RETURN CAST(DATE_Trunc('quarter',datetime) as DATE);
	ELSIF format = 'Y' or format = 'YEAR' THEN
		RETURN CAST(DATE_Trunc('year',datetime) as DATE);
	ELSIF format = 'MM' or format = 'MONTH' THEN
		RETURN CAST(DATE_Trunc('month',datetime) as DATE);
	ELSIF format = 'DD' THEN
		RETURN CAST(DATE_Trunc('day',datetime) as DATE);
	ELSIF format = 'DY' THEN
		RETURN CAST(DATE_Trunc('day',datetime) as DATE);
	ELSE
		RETURN CAST(datetime AS DATE);
	END IF;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: adddays(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION adddays(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION adddays(
    datetime TIMESTAMP,
    days DECFLOAT(34))
  RETURNS date AS
declare duration varchar;
BEGIN
	if datetime is null or days is null then
		return null;
	end if;
	duration = days || ' day';	 
	return cast(date_trunc('day',datetime) + cast(duration as interval) as date);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: currencyrate(DECFLOAT(34), DECFLOAT(34), TIMESTAMP, DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION currencyrate(DECFLOAT(34), DECFLOAT(34), TIMESTAMP, DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION currencyrate(
    p_curfrom_id DECFLOAT(34),
    p_curto_id DECFLOAT(34),
    p_convdate TIMESTAMP,
    p_conversiontype_id DECFLOAT(34),
    p_client_id DECFLOAT(34),
    p_org_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
	
/**
 * Title:	Return Conversion Rate
 * Description:
 *		from CurrencyFrom_ID to CurrencyTo_ID
 *		Returns NULL, if rate not found
 * Test
 *		SELECT currencyrate(116, 100, null, null, null, null) FROM AD_System;  => .647169
 ************************************************************************/
	
	
DECLARE
	--	Currency From variables
	cf_IsEuro		CHAR(1);
	cf_IsEMUMember		CHAR(1);
	cf_EMUEntryDate		TIMESTAMP;
	cf_EMURate		DECFLOAT(34);
	--	Currency To variables
	ct_IsEuro		CHAR(1);
	ct_IsEMUMember		CHAR(1);
	ct_EMUEntryDate	DATE;
	ct_EMURate		DECFLOAT(34);
	--	Triangle
	v_CurrencyFrom		DECFLOAT(34);
	v_CurrencyTo		DECFLOAT(34);
	v_CurrencyEuro		DECFLOAT(34);
	--
	v_ConvDate		TIMESTAMP = now();
	v_ConversionType_ID	DECFLOAT(34) =  0;
	v_Rate			DECFLOAT(34);
	c			RECORD;			

BEGIN
--	No Conversion
	IF (p_CurFrom_ID = p_CurTo_ID) THEN
		RETURN 1;
	END IF;
	--	Default Date Parameter
	IF (p_ConvDate IS NOT NULL) THEN
		v_ConvDate = p_ConvDate;   --  SysDate
	END IF;
    --  Default Conversion Type
	IF (p_ConversionType_ID IS NULL OR p_ConversionType_ID = 0) THEN
		BEGIN
		    SELECT C_ConversionType_ID 
		      INTO v_ConversionType_ID
		    FROM C_ConversionType 
		    WHERE IsDefault='Y'
		      AND AD_Client_ID IN (0,p_Client_ID)
		    ORDER BY AD_Client_ID DESC
		    LIMIT 1;
		EXCEPTION WHEN OTHERS THEN
		    RAISE NOTICE 'Conversion Type Not Found';
		END;
    	ELSE
        	v_ConversionType_ID = p_ConversionType_ID;
	END IF;

	--	Get Currency Info
	SELECT	MAX(IsEuro), MAX(IsEMUMember), MAX(EMUEntryDate), MAX(EMURate)
	  INTO	cf_IsEuro, cf_IsEMUMember, cf_EMUEntryDate, cf_EMURate
	FROM		C_Currency
	  WHERE	C_Currency_ID = p_CurFrom_ID;
	-- Not Found
	IF (cf_IsEuro IS NULL) THEN
		RAISE NOTICE 'From Currency Not Found';
		RETURN NULL;
	END IF;
	SELECT	MAX(IsEuro), MAX(IsEMUMember), MAX(EMUEntryDate), MAX(EMURate)
	  INTO	ct_IsEuro, ct_IsEMUMember, ct_EMUEntryDate, ct_EMURate
	FROM		C_Currency
	  WHERE	C_Currency_ID = p_CurTo_ID;
	-- Not Found
	IF (ct_IsEuro IS NULL) THEN
		RAISE NOTICE 'To Currency Not Found';
		RETURN NULL;
	END IF;

	--	Fixed - From Euro to EMU
	IF (cf_IsEuro = 'Y' AND ct_IsEMUMember ='Y' AND v_ConvDate >= ct_EMUEntryDate) THEN
		RETURN ct_EMURate;
	END IF;

	--	Fixed - From EMU to Euro
	IF (ct_IsEuro = 'Y' AND cf_IsEMUMember ='Y' AND v_ConvDate >= cf_EMUEntryDate) THEN
		RETURN 1 / cf_EMURate;
	END IF;

	--	Fixed - From EMU to EMU
	IF (cf_IsEMUMember = 'Y' AND cf_IsEMUMember ='Y'
			AND v_ConvDate >= cf_EMUEntryDate AND v_ConvDate >= ct_EMUEntryDate) THEN
		RETURN ct_EMURate / cf_EMURate;
	END IF;

	--	Flexible Rates
	v_CurrencyFrom = p_CurFrom_ID;
	v_CurrencyTo = p_CurTo_ID;

	-- if EMU Member involved, replace From/To Currency
	IF ((cf_isEMUMember = 'Y' AND v_ConvDate >= cf_EMUEntryDate)
	  OR (ct_isEMUMember = 'Y' AND v_ConvDate >= ct_EMUEntryDate)) THEN
		SELECT	MAX(C_Currency_ID)
		  INTO	v_CurrencyEuro
		FROM		C_Currency
		WHERE	IsEuro = 'Y';
		-- Conversion Rate not Found
		IF (v_CurrencyEuro IS NULL) THEN
			RAISE NOTICE 'Euro Not Found';
			RETURN NULL;
		END IF;
		IF (cf_isEMUMember = 'Y' AND v_ConvDate >= cf_EMUEntryDate) THEN
			v_CurrencyFrom = v_CurrencyEuro;
		ELSE
			v_CurrencyTo = v_CurrencyEuro;
		END IF;
	END IF;

	--	Get Rate

	BEGIN
		FOR c IN SELECT	MultiplyRate
			FROM	C_Conversion_Rate
			WHERE	C_Currency_ID=v_CurrencyFrom AND C_Currency_ID_To=v_CurrencyTo
			  AND	C_ConversionType_ID=v_ConversionType_ID
			  AND	v_ConvDate BETWEEN ValidFrom AND ValidTo
			  AND	AD_Client_ID IN (0,p_Client_ID) AND AD_Org_ID IN (0,p_Org_ID)
			ORDER BY AD_Client_ID DESC, AD_Org_ID DESC, ValidFrom DESC
		LOOP
			v_Rate = c.MultiplyRate;
			EXIT;	--	only first
		END LOOP;
	END;
	--	Not found
	IF (v_Rate IS NULL) THEN
		RAISE NOTICE 'Conversion Rate Not Found';
		RETURN NULL;
	END IF;

	--	Currency From was EMU
	IF (cf_isEMUMember = 'Y' AND v_ConvDate >= cf_EMUEntryDate) THEN
		RETURN v_Rate / cf_EMURate;
	END IF;

	--	Currency To was EMU
	IF (ct_isEMUMember = 'Y' AND v_ConvDate >= ct_EMUEntryDate) THEN
		RETURN v_Rate * ct_EMURate;
	END IF;

	RETURN v_Rate;

EXCEPTION WHEN OTHERS THEN
	RAISE NOTICE '%', SQLERRM;
	RETURN NULL;

	
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: currencyround(DECFLOAT(34), DECFLOAT(34), VARCHAR)

-- DROP FUNCTION currencyround(DECFLOAT(34), DECFLOAT(34), VARCHAR);

CREATE OR REPLACE FUNCTION currencyround(
    p_amount DECFLOAT(34),
    p_curto_id DECFLOAT(34),
    p_costing VARCHAR)
  RETURNS DECFLOAT(34)

/**
 * Title:	Round amount for Traget Currency
 * Description:
 *		Round Amount using Costing or Standard Precision
 *		Returns unmodified amount if currency not found
 * Test:
 *		SELECT currencyRound(currencyConvert(100,116,100,null,null),100,null) FROM AD_System => 64.72 
 ************************************************************************/
	
	
DECLARE
	v_StdPrecision		int;
	v_CostPrecision		int;

BEGIN
	--	Nothing to convert
	IF (p_Amount IS NULL OR p_CurTo_ID IS NULL) THEN
		RETURN p_Amount;
	END IF;

	--	Ger Precision
	SELECT	MAX(StdPrecision), MAX(CostingPrecision)
	  INTO	v_StdPrecision, v_CostPrecision
	FROM	C_Currency
	  WHERE	C_Currency_ID = p_CurTo_ID;
	--	Currency Not Found
	IF (v_StdPrecision IS NULL) THEN
		RETURN p_Amount;
	END IF;

	IF (p_Costing = 'Y') THEN
		RETURN ROUND (p_Amount, v_CostPrecision);
	END IF;

	RETURN ROUND (p_Amount, v_StdPrecision);
	
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: nextidbyyear(DECFLOAT(34), DECFLOAT(34), VARCHAR)

-- DROP FUNCTION nextidbyyear(DECFLOAT(34), DECFLOAT(34), VARCHAR);

CREATE OR REPLACE FUNCTION nextidbyyear(
    p_ad_sequence_id DECFLOAT(34),
    p_incrementno DECFLOAT(34),
    p_calendaryear VARCHAR)
  RETURNS DECFLOAT(34)
DECLARE
    o_NextID DECFLOAT(34);
BEGIN
   SELECT CurrentNext
		INTO o_NextID
	FROM ad_sequence_no
	WHERE AD_Sequence_ID=p_AD_Sequence_ID 
	AND CalendarYear = p_CalendarYear 
	FOR UPDATE OF ad_sequence_no;
	--
	UPDATE ad_sequence_no
	  SET CurrentNext = CurrentNext + p_IncrementNo
	WHERE AD_Sequence_ID=p_AD_Sequence_ID
	AND CalendarYear = p_CalendarYear;
	RETURN o_NextID;
END
LANGUAGE SQL
  COST 100;
﻿-- Function: paymenttermduedays(DECFLOAT(34), TIMESTAMP, TIMESTAMP)

-- DROP FUNCTION paymenttermduedays(DECFLOAT(34), TIMESTAMP, TIMESTAMP);

CREATE OR REPLACE FUNCTION paymenttermduedays(
    paymentterm_id DECFLOAT(34),
    docdate TIMESTAMP,
    paydate TIMESTAMP)
  RETURNS integer AS
/************************************************************************
 * Title:	Get Due Days
 * Description:
 *	Returns the days due (positive) or the days till due (negative)
 *	Grace days are not considered!
 *	If record is not found it assumes due immediately
 *
 *	Test:	SELECT paymenttermDueDays(103, now(), now());
 *
 * Contributor(s): Carlos Ruiz - globalqss - match with SQLJ version
 ************************************************************************/
DECLARE
 	Days			DECFLOAT(34) =  0;
	DueDate			TIMESTAMP = NULL;
	calDueDate		TIMESTAMP;
	FixMonthOffset		 ANCHOR DATA TYPE TO C_PaymentTerm.FixMonthOffset;
	MaxDayCut		DECFLOAT(34);
	MaxDay			DECFLOAT(34);
	v_PayDate		TIMESTAMP;
	p   			RECORD;
	--
	FirstDay			TIMESTAMP;
	NoDays				DECFLOAT(34);
BEGIN

    	IF PaymentTerm_ID = 0 OR DocDate IS NULL THEN
	    RETURN 0;
	END IF;

    	v_PayDate = PayDate;
	IF v_PayDate IS NULL THEN
	    v_PayDate = TRUNC(now());
	END IF;

	FOR p IN 
		SELECT	*
		FROM	C_PaymentTerm
		WHERE	C_PaymentTerm_ID = PaymentTerm_ID
	LOOP	--	for convineance only

		--	Due 15th of following month
		IF (p.IsDueFixed = 'Y') THEN
			FirstDay = TRUNC(DocDate, 'MM');
			NoDays = extract (day from (TRUNC(DocDate) - FirstDay));
			DueDate = FirstDay + (p.FixMonthDay-1);	--	starting on 1st
			DueDate = DueDate + (p.FixMonthOffset || ' month')::interval;
			
			IF (NoDays > p.FixMonthCutoff) THEN
				DueDate = DueDate + '1 month'::interval;
			END IF;
			-- raise notice 'FirstDay: %, NoDays: %, DueDate: %', FirstDay, NoDays, DueDate;
			
			calDueDate = TRUNC(DocDate);
			MaxDayCut = extract (day from (cast(date_trunc('month', calDueDate) + '1 month'::interval as date) - 1));
			-- raise notice 'last day(MaxDayCut): %' , MaxDayCut;

			IF p.FixMonthCutoff > MaxDayCut THEN
				-- raise notice 'p.FixMonthCutoff > MaxDayCut';
			    calDueDate = cast(date_trunc('month', TRUNC(calDueDate)) + '1 month'::interval as date) - 1;
				-- raise notice 'last day(calDueDate): %' , calDueDate;
			ELSE
			    -- set day fixmonthcutoff on duedate
			    calDueDate = TRUNC(calDueDate, 'MM') + (((p.FixMonthCutoff-1)|| ' days')::interval);
			    -- raise notice 'calDueDate: %' , calDueDate;
			    
			END IF;
			FixMonthOffset = p.FixMonthOffset;
			IF DocDate > calDueDate THEN
			    FixMonthOffset = FixMonthOffset + 1;
				raise notice 'FixMonthOffset: %' , FixMonthOffset;
			END IF;

			calDueDate = calDueDate + (FixMonthOffset || ' month')::interval;
			-- raise notice 'calDueDate: %' , calDueDate;

			MaxDay = extract (day from (cast(date_trunc('month', calDueDate) + '1 month'::interval as date) - 1));


			IF    (p.FixMonthDay > MaxDay)    --	32 -> 28
			   OR (p.FixMonthDay >= 30 AND MaxDay > p.FixMonthDay) THEN  	--	30 -> 31
				calDueDate = TRUNC(calDueDate, 'MM') + (((MaxDay-1)|| ' days')::interval);
				-- raise notice 'calDueDate: %' , calDueDate;			
			ELSE
				calDueDate = TRUNC(calDueDate, 'MM') + (((p.FixMonthDay-1)|| ' days')::interval);
				-- raise notice 'calDueDate: %' , calDueDate;			
			END IF;
			DueDate = calDueDate; 

		ELSE
			DueDate = TRUNC(DocDate) + p.NetDays;
		END IF;
	END LOOP;

    IF DueDate IS NULL THEN
	    RETURN 0;
	END IF;


	Days = EXTRACT(day from (TRUNC(v_PayDate) - DueDate));
	RETURN Days;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: documentno(DECFLOAT(34))

-- DROP FUNCTION documentno(DECFLOAT(34));

CREATE OR REPLACE FUNCTION documentno(p_pp_mrp_id DECFLOAT(34))
  RETURNS VARCHAR AS
DECLARE
	v_DocumentNo  ANCHOR DATA TYPE TO PP_MRP.Value = '';
BEGIN
	-- If NO id return empty string
	IF p_PP_MRP_ID <= 0 THEN
		RETURN '';
	END IF;
	SELECT --ordertype, m_forecast_id, c_order_id, dd_order_id, pp_order_id, m_requisition_id,
	CASE
			WHEN trim(mrp.ordertype) = 'FTC' THEN (SELECT f.Name FROM M_Forecast f 
			WHERE f.M_Forecast_ID=mrp.M_Forecast_ID)
			WHEN trim(mrp.ordertype) = 'POO' THEN (SELECT co.DocumentNo  FROM C_Order co 
			WHERE co.C_Order_ID=mrp.C_Order_ID)
			WHEN trim(mrp.ordertype) = 'DOO' THEN (SELECT dd.DocumentNo  FROM DD_Order dd 
			WHERE dd.DD_Order_ID=mrp.DD_Order_ID)
			WHEN trim(mrp.ordertype) = 'SOO' THEN (SELECT co.DocumentNo  FROM C_Order co 
			WHERE co.C_Order_ID=mrp.C_Order_ID)
			WHEN trim(mrp.ordertype) = 'MOP' THEN (SELECT po.DocumentNo FROM PP_Order po 
			WHERE po.PP_Order_ID=mrp.PP_Order_ID)
			WHEN trim(mrp.ordertype) = 'POR' THEN (SELECT r.DocumentNo  FROM M_Requisition r 
			WHERE r.M_Requisition_ID=mrp.M_Requisition_ID)
			
	END INTO v_DocumentNo
	FROM pp_mrp mrp
	WHERE mrp.pp_mrp_id = p_PP_MRP_ID;
	RETURN v_DocumentNo;
END;	
LANGUAGE SQL
  COST 100;
﻿-- Function: uuid_ns_dns()

-- DROP FUNCTION uuid_ns_dns();

CREATE OR REPLACE FUNCTION uuid_ns_dns()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_ns_dns'
LANGUAGE SQL
  COST 1;
﻿-- Function: paymentavailabletodate(DECFLOAT(34), TIMESTAMP)

-- DROP FUNCTION paymentavailabletodate(DECFLOAT(34), TIMESTAMP);

CREATE OR REPLACE FUNCTION paymentavailabletodate(
    p_c_payment_id DECFLOAT(34),
    p_dateacct TIMESTAMP)
  RETURNS DECFLOAT(34)
/************************************************************************
 * Title:	Calculate Available Payment Amount in Payment Currency
 * Description:
 *		similar to C_Invoice_Open
 ************************************************************************/
DECLARE
	v_Currency_ID		DECIMAL(10);
	v_AvailableAmt		DECFLOAT(34) =  0;
    	v_IsReceipt      ANCHOR DATA TYPE TO C_Payment.IsReceipt;
    	v_Amt               	DECFLOAT(34) =  0;
    	r   			RECORD;

BEGIN
    --  Charge - fully allocated
    SELECT MAX(PayAmt) 
      INTO v_Amt
    FROM C_Payment 
    WHERE C_Payment_ID=p_C_Payment_ID AND C_Charge_ID > 0;
    IF (v_Amt IS NOT NULL) THEN
        RETURN 0;
    END IF;

	--	Get Currency
	SELECT	C_Currency_ID, PayAmt, IsReceipt
	  INTO	v_Currency_ID, v_AvailableAmt, v_IsReceipt
	FROM	C_Payment_v     -- corrected for AP/AR
	WHERE	C_Payment_ID = p_C_Payment_ID;
--  DBMS_OUTPUT.PUT_LINE('== C_Payment_ID=' || p_C_Payment_ID || ', PayAmt=' || v_AvailableAmt || ', Receipt=' || v_IsReceipt);

	--	Calculate Allocated Amount
	FOR r IN
		SELECT	a.AD_Client_ID, a.AD_Org_ID, al.Amount, a.C_Currency_ID, a.DateTrx
		FROM	C_AllocationLine al
	        INNER JOIN C_AllocationHdr a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
		WHERE	al.C_Payment_ID = p_C_Payment_ID
          	AND   a.IsActive='Y'
          	AND a.DateAcct <= p_DateAcct
	LOOP
        v_Amt = currencyConvert(r.Amount, r.C_Currency_ID, v_Currency_ID, r.DateTrx, null, r.AD_Client_ID, r.AD_Org_ID);
	    v_AvailableAmt = v_AvailableAmt - v_Amt;
--      DBMS_OUTPUT.PUT_LINE('  Allocation=' || a.Amount || ' - Available=' || v_AvailableAmt);
	END LOOP;
	--	Ignore Rounding
	IF (v_AvailableAmt BETWEEN -0.00999 AND 0.00999) THEN
		v_AvailableAmt = 0;
	END IF;
	--	Round to penny
	v_AvailableAmt = ROUND(COALESCE(v_AvailableAmt,0), 2);
	RETURN	v_AvailableAmt;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: unaccent_string(text)

-- DROP FUNCTION unaccent_string(text);

CREATE OR REPLACE FUNCTION unaccent_string(p_text text)
  RETURNS text AS
BEGIN
	return unaccent_string(p_text, 1);
END;
LANGUAGE SQL
  COST 100;
COMMENT ON FUNCTION unaccent_string(text) IS 'Remove diacritings from given text';
﻿-- Function: add_months(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION add_months(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION add_months(
    datetime TIMESTAMP,
    months DECFLOAT(34))
  RETURNS date AS
declare duration varchar;
BEGIN
	if datetime is null or months is null then
		return null;
	end if;
	duration = months || ' month';	 
	return cast(datetime + cast(duration as interval) as date);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: bomqtyorderedasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bomqtyorderedasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyorderedasi(
    p_product_id DECFLOAT(34),
    attributesetinstance_id DECFLOAT(34),
    p_warehouse_id DECFLOAT(34),
    p_locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Warehouse_ID		DECFLOAT(34);
 	v_Quantity		DECFLOAT(34) =  99999;	--	unlimited
	v_IsBOM			CHAR(1);
	v_IsStocked		CHAR(1);
	v_ProductType		CHAR(1);
 	v_ProductQty		DECFLOAT(34);
	v_StdPrecision		int;
	bom 			record;
BEGIN
	--	Check Parameters
	v_Warehouse_ID = p_Warehouse_ID;
	IF (v_Warehouse_ID IS NULL) THEN
		IF (p_Locator_ID IS NULL) THEN
			RETURN 0;
		ELSE
			SELECT 	MAX(M_Warehouse_ID) INTO v_Warehouse_ID
			FROM	M_LOCATOR
			WHERE	M_Locator_ID=p_Locator_ID;
		END IF;
	END IF;
	IF (v_Warehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || v_Warehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
		  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM 	M_PRODUCT
		WHERE 	M_Product_ID=p_Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;

	--	No reservation for non-stocked
	IF (v_IsBOM='N' AND (v_ProductType<>'I' OR v_IsStocked='N')) THEN
		RETURN 0;
	--	Stocked item
	ELSIF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	COALESCE(SUM(QtyOrdered), 0)
		  INTO	v_ProductQty
		FROM 	M_STORAGE s
		WHERE 	M_Product_ID=p_Product_ID
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=v_Warehouse_ID)
		  AND (s.M_AttributeSetInstance_ID = AttributeSetInstance_ID 
		  OR COALESCE(AttributeSetInstance_ID,0) = 0);
		--
		RETURN v_ProductQty;
	END IF;

	--	Go though BOM
--	DBMS_OUTPUT.PUT_LINE('BOM');
	FOR bom IN 
	--	Get BOM Product info
	SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
	THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM , p.IsStocked, p.ProductType 
		FROM PP_PRODUCT_BOM b
			   INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
			   INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = p_Product_ID
	LOOP
		--	Stocked Items "leaf node"
		IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
			--	Get ProductQty
			SELECT 	COALESCE(SUM(QtyOrdered), 0)
			  INTO	v_ProductQty
			FROM 	M_STORAGE s
			WHERE 	M_Product_ID=bom.M_ProductBOM_ID
			  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
			  	AND l.M_Warehouse_ID=v_Warehouse_ID)
		      AND (s.M_AttributeSetInstance_ID = AttributeSetInstance_ID 
			  OR COALESCE(AttributeSetInstance_ID,0) = 0);
			--	Get Rounding Precision
			SELECT 	COALESCE(MAX(u.StdPrecision), 0)
			  INTO	v_StdPrecision
			FROM 	C_UOM u, M_PRODUCT p
			WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=bom.M_ProductBOM_ID;
			--	How much can we make with this product
			v_ProductQty = ROUND (v_ProductQty/bom.BOMQty, v_StdPrecision);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		--	Another BOM
		ELSIF (bom.IsBOM = 'Y') THEN
			v_ProductQty = BomqtyorderedASI (bom.M_ProductBOM_ID, 
			AttributeSetInstance_ID, v_Warehouse_ID, p_Locator_ID);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		END IF;
	END LOOP;	--	BOM

	--	Unlimited (e.g. only services)
	IF (v_Quantity = 99999) THEN
		RETURN 0;
	END IF;

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=p_Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision);
	END IF;
	--
	RETURN 0;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: currencyconvert(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- TIMESTAMP, DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION currencyconvert(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- TIMESTAMP, DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION currencyconvert(
    p_amount DECFLOAT(34),
    p_curfrom_id DECFLOAT(34),
    p_curto_id DECFLOAT(34),
    p_convdate TIMESTAMP,
    p_conversiontype_id DECFLOAT(34),
    p_client_id DECFLOAT(34),
    p_org_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
	
/**
 * Title:	Convert Amount (using IDs)
 * Description:
 *		from CurrencyFrom_ID to CurrencyTo_ID
 *		Returns NULL, if conversion not found
 *		Standard Rounding
 * Test:
 *	SELECT currencyConvert(100,116,100,null,null,null,null) FROM AD_System;  => 64.72
 ************************************************************************/	
	
	
DECLARE
	v_Rate				DECFLOAT(34);

BEGIN
	--	Return Amount
		IF (p_Amount = 0 OR p_CurFrom_ID = p_CurTo_ID) THEN
			RETURN p_Amount;
		END IF;
		--	Return NULL
		IF (p_Amount IS NULL OR p_CurFrom_ID IS NULL OR p_CurTo_ID IS NULL) THEN
			RETURN NULL;
		END IF;
	
		--	Get Rate
		v_Rate = currencyRate (p_CurFrom_ID, p_CurTo_ID, p_ConvDate, 
		p_ConversionType_ID, p_Client_ID, p_Org_ID);
		IF (v_Rate IS NULL) THEN
			RETURN NULL;
		END IF;
	
		--	Standard Precision
	RETURN currencyRound(p_Amount * v_Rate, p_CurTo_ID, null);
	
END;

LANGUAGE SQL
  COST 100;
TIMESTAMP, DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))
﻿-- Function: uuid_generate_v1()

-- DROP FUNCTION uuid_generate_v1();

CREATE OR REPLACE FUNCTION uuid_generate_v1()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_generate_v1'
LANGUAGE SQL
  COST 1;
﻿-- Function: prodqtyordered(DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION prodqtyordered(DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION prodqtyordered(
    p_product_id DECFLOAT(34),
    p_warehouse_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Warehouse_ID			DECFLOAT(34);
 	v_Quantity			DECFLOAT(34) =  99999;	--	unlimited
	v_IsBOM				CHAR(1);
	v_IsStocked				CHAR(1);
	v_ProductType			CHAR(1);
 	v_ProductQty			DECFLOAT(34);
	v_StdPrecision			int;
BEGIN
	--	Check Parameters
	v_Warehouse_ID = p_Warehouse_ID;
	IF (v_Warehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || v_Warehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
		  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM M_PRODUCT
		WHERE M_Product_ID=p_Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;

	--	No reservation for non-stocked
	IF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	COALESCE(SUM(MovementQty), 0)
		  INTO	v_ProductQty
		FROM 	M_ProductionLine p
		WHERE M_Product_ID=p_Product_ID AND MovementQty > 0 AND p.Processed = 'N'
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE p.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=v_Warehouse_ID);
		--
		RETURN v_ProductQty;
	END IF;

	--	Unlimited (e.g. only services)
	IF (v_Quantity = 99999) THEN
		RETURN 0;
	END IF;

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=p_Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision);
	END IF;
	RETURN 0;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: nextid(integer, VARCHAR)

-- DROP FUNCTION nextid(integer, VARCHAR);

CREATE OR REPLACE FUNCTION nextid(
    IN p_ad_sequence_id integer,
    IN p_system VARCHAR,
    OUT o_nextid integer)
  RETURNS integer AS
/***
 * Title:	Get Next ID - no Commit
 * Description: Returns the next id of the sequence.
 * Test:
 *	select * from nextid((select ad_sequence_id from ad_sequence where name = 'Test')::Integer, 'Y'::Varchar);
 * 
 ************************************************************************/

BEGIN
    IF (p_System = 'Y') THEN
	RAISE NOTICE 'system';
        SELECT CurrentNextSys
            INTO o_NextID
        FROM AD_Sequence
        WHERE AD_Sequence_ID=p_AD_Sequence_ID;
        --
        UPDATE AD_Sequence
          SET CurrentNextSys = CurrentNextSys + IncrementNo
        WHERE AD_Sequence_ID=p_AD_Sequence_ID;
    ELSE
        SELECT CurrentNext
            INTO o_NextID
        FROM AD_Sequence
        WHERE AD_Sequence_ID=p_AD_Sequence_ID;
        --
        UPDATE AD_Sequence
          SET CurrentNext = CurrentNext + IncrementNo
        WHERE AD_Sequence_ID=p_AD_Sequence_ID;
    END IF;
    --
EXCEPTION
    WHEN  OTHERS THEN
    	RAISE NOTICE '%',SQLERRM;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: invoicediscount(DECFLOAT(34), TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION invoicediscount(DECFLOAT(34), TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION invoicediscount(
    p_c_invoice_id DECFLOAT(34),
    p_paydate TIMESTAMP,
    p_c_invoicepayschedule_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
/***
 * Title:	Calculate Payment Discount Amount
 * Description:
 *			- Calculate discountable amount (i.e. with or without tax)
 *			- Calculate and return payment discount
 * Test:
 * 		select invoiceDiscount(109, now(), 103) from ad_system; => 0
 ************************************************************************/
DECLARE
	v_Amount		DECFLOAT(34);
	v_IsDiscountLineAmt	CHAR(1);
	v_GrandTotal		DECFLOAT(34);
	v_TotalLines		DECFLOAT(34);
	v_C_PaymentTerm_ID	DECIMAL(10);
	v_DocDate		TIMESTAMP;
	v_PayDate		TIMESTAMP = now();
    	v_IsPayScheduleValid    CHAR(1);

BEGIN
	SELECT 	ci.IsDiscountLineAmt, i.GrandTotal, i.TotalLines,
		i.C_PaymentTerm_ID, i.DateInvoiced, i.IsPayScheduleValid
	INTO 	v_IsDiscountLineAmt, v_GrandTotal, v_TotalLines,
		v_C_PaymentTerm_ID, v_DocDate, v_IsPayScheduleValid
	FROM 	AD_ClientInfo ci, C_Invoice i
	WHERE 	ci.AD_Client_ID=i.AD_Client_ID
	  AND 	i.C_Invoice_ID=p_C_Invoice_ID;
	  
	--	What Amount is the Discount Base?
 	IF (v_IsDiscountLineAmt = 'Y') THEN
		v_Amount = v_TotalLines;
	ELSE
		v_Amount = v_GrandTotal;
	END IF;

	--	Anything to discount?
	IF (v_Amount = 0) THEN
		RETURN 0;
   	END IF;
	IF (p_PayDate IS NOT NULL) THEN
		v_PayDate = p_PayDate;
  	END IF;

    --  Valid Payment Schedule
    IF (v_IsPayScheduleValid='Y' AND p_C_InvoicePaySchedule_ID > 0) THEN
        SELECT COALESCE(MAX(DiscountAmt),0)
          INTO v_Amount
        FROM C_InvoicePaySchedule
        WHERE C_InvoicePaySchedule_ID=p_C_InvoicePaySchedule_ID
          AND DiscountDate <= v_PayDate;
        --
        RETURN v_Amount;
    END IF;

	--	return discount amount	
	RETURN paymentTermDiscount (v_Amount, 0, v_C_PaymentTerm_ID, v_DocDate, p_PayDate);

--	Most likely if invoice not found
EXCEPTION
	WHEN OTHERS THEN
		RETURN NULL;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: bompricelimit(DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bompricelimit(DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bompricelimit(
    p_product_id DECFLOAT(34),
    p_pricelist_version_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Price		DECFLOAT(34);
	v_ProductPrice	DECFLOAT(34);
	bom		record;
BEGIN
	--	Try to get price from PriceList directly
	SELECT	COALESCE (SUM(PriceLimit), 0)
        INTO	v_Price
   	FROM	M_PRODUCTPRICE
	WHERE M_PriceList_Version_ID=p_PriceList_Version_ID AND M_Product_ID=p_Product_ID;
	IF (v_Price = 0) THEN
		FOR bom in SELECT bl.M_Product_ID AS M_ProductBOM_ID, 
			CASE WHEN bl.IsQtyPercentage = 'N' THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM 
		FROM PP_PRODUCT_BOM b
		INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
		INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = p_Product_ID
		LOOP
			v_ProductPrice = Bompricelimit (bom.M_ProductBOM_ID, p_PriceList_Version_ID);
			v_Price = v_Price + (bom.BOMQty * v_ProductPrice);
		END LOOP;
	END IF;
	--
	RETURN v_Price;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: subtractdays(interval, DECFLOAT(34))

-- DROP FUNCTION subtractdays(interval, DECFLOAT(34));

CREATE OR REPLACE FUNCTION subtractdays(
    inter interval,
    days DECFLOAT(34))
  RETURNS integer AS
BEGIN
RETURN ( EXTRACT( EPOCH FROM ( inter ) ) / 86400 ) - days;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: bomqtyonhandasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- DECFLOAT(34))

-- DROP FUNCTION bomqtyonhandasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyonhandasi(
    product_id DECFLOAT(34),
    attributesetinstance_id DECFLOAT(34),
    warehouse_id DECFLOAT(34),
    locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	myWarehouse_ID		DECFLOAT(34);
 	v_Quantity		DECFLOAT(34) = 99999;	--	unlimited
	v_IsBOM			CHAR(1);
	v_IsStocked		CHAR(1);
	v_ProductType		CHAR(1);
 	v_ProductQty		DECFLOAT(34);
	v_StdPrecision		DECFLOAT(34);
	bom 			record; 
BEGIN
	--	Check Parameters
	myWarehouse_ID = Warehouse_ID;
	IF (myWarehouse_ID IS NULL) THEN
		IF (Locator_ID IS NULL) THEN
			RETURN 0;
		ELSE
			SELECT 	SUM(M_Warehouse_ID) INTO myWarehouse_ID
			FROM	M_LOCATOR
			WHERE	M_Locator_ID=Locator_ID;
		END IF;
	END IF;
	IF (myWarehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || myWarehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
	 	  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM M_PRODUCT
		WHERE M_Product_ID=Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;
	--	Unimited capacity if no item
	IF (v_IsBOM='N' AND (v_ProductType<>'I' OR v_IsStocked='N')) THEN
		RETURN v_Quantity;
	--	Stocked item
	ELSIF (v_IsStocked='Y') THEN
		--	Get v_ProductQty
		SELECT 	COALESCE(SUM(QtyOnHand), 0)
		  INTO	v_ProductQty
		FROM 	M_STORAGE s
		WHERE M_Product_ID=Product_ID
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=myWarehouse_ID)
		  AND (s.M_AttributeSetInstance_ID = AttributeSetInstance_ID 
		  OR COALESCE(AttributeSetInstance_ID,0) = 0);
		--
	--	DBMS_OUTPUT.PUT_LINE('Qty=' || v_ProductQty);
		RETURN v_ProductQty;
	END IF;

	--	Go though BOM
--	DBMS_OUTPUT.PUT_LINE('BOM');
	FOR bom IN 
	--	Get BOM Product info
		SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
		THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM , p.IsStocked, p.ProductType 
		FROM PP_PRODUCT_BOM b
			   INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
			   INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = Product_ID
	LOOP
		--	Stocked Items "leaf node"
		IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
			--	Get v_ProductQty
			SELECT 	COALESCE(SUM(QtyOnHand), 0)
			  INTO	v_ProductQty
			FROM 	M_STORAGE s
			WHERE M_Product_ID=bom.M_ProductBOM_ID
			  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
			  	AND l.M_Warehouse_ID=myWarehouse_ID)
	   		  AND (s.M_AttributeSetInstance_ID = AttributeSetInstance_ID 
			  OR COALESCE(AttributeSetInstance_ID,0) = 0);
			--	Get Rounding Precision
			SELECT 	COALESCE(MAX(u.StdPrecision), 0)
			  INTO	v_StdPrecision
			FROM 	C_UOM u, M_PRODUCT p
			WHERE u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=bom.M_ProductBOM_ID;
			--	How much can we make with this product
			v_ProductQty = ROUND (v_ProductQty/bom.BOMQty, v_StdPrecision);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		--	Another BOM
		ELSIF (bom.IsBOM = 'Y') THEN
			v_ProductQty = BomqtyonhandASI (bom.M_ProductBOM_ID, AttributeSetInstance_ID, 
			myWarehouse_ID, Locator_ID);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		END IF;
	END LOOP;	--	BOM

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision );
	END IF;
	RETURN 0;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: uuid_generate_v5(uuid, text)

-- DROP FUNCTION uuid_generate_v5(uuid, text);

CREATE OR REPLACE FUNCTION uuid_generate_v5(
    namespace uuid,
    name text)
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_generate_v5'
LANGUAGE SQL
  COST 1;
﻿-- Function: uuid_generate_v4()

-- DROP FUNCTION uuid_generate_v4();

CREATE OR REPLACE FUNCTION uuid_generate_v4()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_generate_v4'
LANGUAGE SQL
  COST 1;
﻿-- Function: paymentallocated(DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION paymentallocated(DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION paymentallocated(
    p_c_payment_id DECFLOAT(34),
    p_c_currency_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
/************************************************************************
 * Title:	Calculate Allocated Payment Amount in Payment Currency
 * Description:
    --
    SELECT paymentAllocated(C_Payment_ID,C_Currency_ID), PayAmt, IsAllocated
    FROM C_Payment_v 
    WHERE C_Payment_ID<1000000;
    --
    UPDATE C_Payment_v 
    SET IsAllocated=CASE WHEN paymentAllocated(C_Payment_ID, C_Currency_ID)=PayAmt THEN 'Y' ELSE 'N' END
    WHERE C_Payment_ID>=1000000;
 
 ************************************************************************/
DECLARE
	v_AllocatedAmt		DECFLOAT(34) =  0;
    	v_PayAmt        	DECFLOAT(34);
    	r   			RECORD;
BEGIN
    --  Charge - nothing available
    SELECT 
      INTO v_PayAmt MAX(PayAmt) 
    FROM C_Payment 
    WHERE C_Payment_ID=p_C_Payment_ID AND C_Charge_ID > 0;
    
    IF (v_PayAmt IS NOT NULL) THEN
        RETURN v_PayAmt;
    END IF;
    
	--	Calculate Allocated Amount
	FOR r IN
		SELECT	a.AD_Client_ID, a.AD_Org_ID, al.Amount, a.C_Currency_ID, a.DateTrx
			FROM	C_AllocationLine al
	          INNER JOIN C_AllocationHdr a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
			WHERE	al.C_Payment_ID = p_C_Payment_ID
          	AND   a.DocStatus IN('CO', 'CL')
	LOOP
		v_AllocatedAmt = v_AllocatedAmt
			+ currencyConvert(r.Amount, r.C_Currency_ID, p_C_Currency_ID, r.DateTrx, null, r.AD_Client_ID, r.AD_Org_ID);
	END LOOP;
	--	Round to penny
	v_AllocatedAmt = ROUND(COALESCE(v_AllocatedAmt,0), 2);
	RETURN	v_AllocatedAmt;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: bomqtyreservedasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- DECFLOAT(34))

-- DROP FUNCTION bomqtyreservedasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
-- DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyreservedasi(
    p_product_id DECFLOAT(34),
    attributesetinstance_id DECFLOAT(34),
    p_warehouse_id DECFLOAT(34),
    p_locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	v_Warehouse_ID		DECFLOAT(34);
 	v_Quantity		DECFLOAT(34) =  99999;	--	unlimited
	v_IsBOM			CHAR(1);
	v_IsStocked		CHAR(1);
	v_ProductType		CHAR(1);
 	v_ProductQty		DECFLOAT(34);
	v_StdPrecision		int;
	bom 			record;
	--
BEGIN
	--	Check Parameters
	v_Warehouse_ID = p_Warehouse_ID;
	IF (v_Warehouse_ID IS NULL) THEN
		IF (p_Locator_ID IS NULL) THEN
			RETURN 0;
		ELSE
			SELECT 	MAX(M_Warehouse_ID) INTO v_Warehouse_ID
			FROM	M_LOCATOR
			WHERE	M_Locator_ID=p_Locator_ID;
		END IF;
	END IF;
	IF (v_Warehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || v_Warehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
		  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM M_PRODUCT
		WHERE M_Product_ID=p_Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;

	--	No reservation for non-stocked
	IF (v_IsBOM='N' AND (v_ProductType<>'I' OR v_IsStocked='N')) THEN
		RETURN 0;
	--	Stocked item
	ELSIF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	COALESCE(SUM(QtyReserved), 0)
		  INTO	v_ProductQty
		FROM 	M_STORAGE s
		WHERE M_Product_ID=p_Product_ID
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=v_Warehouse_ID)
		  AND (s.M_AttributeSetInstance_ID = AttributeSetInstance_ID 
		  OR COALESCE(AttributeSetInstance_ID,0) = 0);
		--
		RETURN v_ProductQty;
	END IF;

	--	Go though BOM
--	DBMS_OUTPUT.PUT_LINE('BOM');
	FOR bom IN 
	--Get BOM Product info
	SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
	THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM , p.IsStocked, p.ProductType 
		FROM PP_PRODUCT_BOM b
			   INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
			   INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = p_Product_ID
	LOOP
		--	Stocked Items "leaf node"
		IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
			--	Get ProductQty
			SELECT 	COALESCE(SUM(QtyReserved), 0)
			  INTO	v_ProductQty
			FROM 	M_STORAGE s
			WHERE 	M_Product_ID=bom.M_ProductBOM_ID
			  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
			  	AND l.M_Warehouse_ID=v_Warehouse_ID)
		  AND (s.M_AttributeSetInstance_ID = AttributeSetInstance_ID 
		  OR COALESCE(AttributeSetInstance_ID,0) = 0);
			--	Get Rounding Precision
			SELECT 	COALESCE(MAX(u.StdPrecision), 0)
			  INTO	v_StdPrecision
			FROM 	C_UOM u, M_PRODUCT p
			WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=bom.M_ProductBOM_ID;
			--	How much can we make with this product
			v_ProductQty = ROUND (v_ProductQty/bom.BOMQty, v_StdPrecision);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		--	Another BOM
		ELSIF (bom.IsBOM = 'Y') THEN
			v_ProductQty = BomqtyreservedASI (bom.M_ProductBOM_ID, AttributeSetInstance_ID, 
			v_Warehouse_ID, p_Locator_ID);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		END IF;
	END LOOP;	--	BOM

	--	Unlimited (e.g. only services)
	IF (v_Quantity = 99999) THEN
		RETURN 0;
	END IF;

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE 	u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=p_Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision );
	END IF;
	RETURN 0;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: currencybase(DECFLOAT(34), DECFLOAT(34), TIMESTAMP, DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION currencybase(DECFLOAT(34), DECFLOAT(34), TIMESTAMP, DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION currencybase(
    p_amount DECFLOAT(34),
    p_curfrom_id DECFLOAT(34),
    p_convdate TIMESTAMP,
    p_client_id DECFLOAT(34),
    p_org_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
/***
 * Title:	Convert Amount to Base Currency of Client
 * Description:
 *		Get CurrencyTo from Client
 *		Returns NULL, if conversion not found
 *		Standard Rounding
 * Test:
 *		SELECT currencyBase(100,116,null,11,null) FROM AD_System; => 64.72
 ************************************************************************/
DECLARE
	v_CurTo_ID	DECFLOAT(34);
BEGIN
	--	Get Currency
	SELECT	MAX(ac.C_Currency_ID)
	  INTO	v_CurTo_ID
	FROM	AD_ClientInfo ci, C_AcctSchema ac
	WHERE	ci.C_AcctSchema1_ID=ac.C_AcctSchema_ID
	  AND	ci.AD_Client_ID=p_Client_ID;
	--	Same as Currency_Conversion - if currency/rate not found - return 0
	IF (v_CurTo_ID IS NULL) THEN
		RETURN NULL;
	END IF;
	--	Same currency
	IF (p_CurFrom_ID = v_CurTo_ID) THEN
		RETURN p_Amount;
	END IF;

	RETURN currencyConvert (p_Amount, p_CurFrom_ID, v_CurTo_ID, p_ConvDate, null, p_Client_ID, p_Org_ID);
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: bomqtyavailableasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bomqtyavailableasi(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyavailableasi(
    product_id DECFLOAT(34),
    attributesetinstance_id DECFLOAT(34),
    warehouse_id DECFLOAT(34),
    locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
BEGIN
	RETURN bomQtyOnHandASI(Product_ID, AttributeSetInstance_ID, Warehouse_ID, Locator_ID) -
	       bomQtyReservedASI(Product_ID, AttributeSetInstance_ID, Warehouse_ID, Locator_ID);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: uuid_ns_oid()

-- DROP FUNCTION uuid_ns_oid();

CREATE OR REPLACE FUNCTION uuid_ns_oid()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_ns_oid'
LANGUAGE SQL
  COST 1;
﻿-- Function: paymentavailable(DECFLOAT(34))

-- DROP FUNCTION paymentavailable(DECFLOAT(34));

CREATE OR REPLACE FUNCTION paymentavailable(p_c_payment_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
/*************************************************************************
 * Title:	Calculate Available Payment Amount in Payment Currency
 * Description:
 *		similar to C_Invoice_Open
 ************************************************************************/
DECLARE
	v_Currency_ID		DECIMAL(10);
	v_AvailableAmt		DECFLOAT(34) =  0;
    	v_IsReceipt    ANCHOR DATA TYPE TO 	C_Payment.IsReceipt;
    	v_Amt               	DECFLOAT(34) =  0;
    	r   			RECORD;

BEGIN
    --  Charge - fully allocated
    SELECT MAX(PayAmt) 
      INTO v_Amt
    FROM C_Payment 
    WHERE C_Payment_ID=p_C_Payment_ID AND C_Charge_ID > 0;
    IF (v_Amt IS NOT NULL) THEN
        RETURN 0;
    END IF;

	--	Get Currency
	SELECT	C_Currency_ID, PayAmt, IsReceipt
	  INTO	v_Currency_ID, v_AvailableAmt, v_IsReceipt
	FROM	C_Payment_v     -- corrected for AP/AR
	WHERE	C_Payment_ID = p_C_Payment_ID;
--  DBMS_OUTPUT.PUT_LINE('== C_Payment_ID=' || p_C_Payment_ID || ', PayAmt=' || v_AvailableAmt || ', Receipt=' || v_IsReceipt);

	--	Calculate Allocated Amount
	FOR r IN
		SELECT	a.AD_Client_ID, a.AD_Org_ID, al.Amount, a.C_Currency_ID, a.DateTrx
		FROM	C_AllocationLine al
	        INNER JOIN C_AllocationHdr a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
		WHERE	al.C_Payment_ID = p_C_Payment_ID
          	AND   a.DocStatus IN('CO', 'CL')
	LOOP
        v_Amt = currencyConvert(r.Amount, r.C_Currency_ID, v_Currency_ID, r.DateTrx, null, r.AD_Client_ID, r.AD_Org_ID);
	    v_AvailableAmt = v_AvailableAmt - v_Amt;
--      DBMS_OUTPUT.PUT_LINE('  Allocation=' || a.Amount || ' - Available=' || v_AvailableAmt);
	END LOOP;
	--	Ignore Rounding
	IF (v_AvailableAmt BETWEEN -0.00999 AND 0.00999) THEN
		v_AvailableAmt = 0;
	END IF;
	--	Round to penny
	v_AvailableAmt = ROUND(COALESCE(v_AvailableAmt,0), 2);
	RETURN	v_AvailableAmt;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: unaccent_string(text, DECFLOAT(34))

-- DROP FUNCTION unaccent_string(text, DECFLOAT(34));

CREATE OR REPLACE FUNCTION unaccent_string(
    text,
    DECFLOAT(34))
  RETURNS text AS
DECLARE
    input_string text = $1;
    output_string CLOB;
    version DECFLOAT(34) = $2;
BEGIN

input_string = translate(input_string, 'âaaaaaÁÂAAAAAA', 'aaaaaaaaaaaaaa');
input_string = translate(input_string, 'eééeëeeeeeEËEEE', 'eeeeeeeeeeeeeee');
input_string = translate(input_string, 'iíîiiiiïÏÍÎIIIII', 'iiiiiiiiiiiiiiii');
input_string = translate(input_string, 'óôooooOÓÔOOOOO', 'oooooooooooooo');
input_string = translate(input_string, 'uúuuuuuUÚUUUUUU', 'uuuuuuuuuuuuuuu');
input_string = translate(input_string, 'ç', 'c');
if version = 1 then
 input_string = replace(lower(input_string),'ß','ss');
 input_string = replace(lower(input_string),'ä','ae');
 input_string = replace(lower(input_string),'ö','oe');
 input_string = replace(lower(input_string),'ü','ue');
else
 input_string = replace(lower(input_string),'ss','ß');
 input_string = replace(lower(input_string),'ae','ä');
 input_string = replace(lower(input_string),'oe','ö');
 input_string = replace(lower(input_string),'ue','ü');
end if;
return input_string;
END;
LANGUAGE SQL
  COST 100;
COMMENT ON FUNCTION unaccent_string(text, DECFLOAT(34)) IS 'Remove diacritings from given text. 1 - strip, 2 - unstrip';
﻿-- Function: invoicepaidtodate(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP)

-- DROP FUNCTION invoicepaidtodate(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP);

CREATE OR REPLACE FUNCTION invoicepaidtodate(
    p_c_invoice_id DECFLOAT(34),
    p_c_currency_id DECFLOAT(34),
    p_multiplierap DECFLOAT(34),
    p_dateacct TIMESTAMP)
  RETURNS DECFLOAT(34)
DECLARE
	v_MultiplierAP		DECFLOAT(34) =  1;
	v_PaymentAmt		DECFLOAT(34) =  0;
	allocation 		record;
BEGIN
	--	Default
	IF (p_MultiplierAP IS NOT NULL) THEN
		v_MultiplierAP = p_MultiplierAP;
	END IF;
	--	Calculate Allocated Amount
	FOR allocation IN 
	SELECT	al.AD_Client_ID, al.AD_Org_ID,al.Amount, al.DiscountAmt, al.WriteOffAmt,a.C_Currency_ID, a.DateTrx
	FROM	C_ALLOCATIONLINE al
	INNER JOIN C_ALLOCATIONHDR a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
    WHERE	al.C_Invoice_ID = p_C_Invoice_ID 
    AND   a.DocStatus IN('CO', 'CL') 
    AND a.DateAcct <= p_DateAcct
	LOOP
		v_PaymentAmt = v_PaymentAmt
			+ Currencyconvert(allocation.Amount + allocation.DisCountAmt + allocation.WriteOffAmt,
				allocation.C_Currency_ID, p_C_Currency_ID, allocation.DateTrx, NULL, allocation.AD_Client_ID, allocation.AD_Org_ID);
	END LOOP;
	--
	RETURN	ROUND(COALESCE(v_PaymentAmt,0), 2) * v_MultiplierAP;
END;	
LANGUAGE SQL
  COST 100;
﻿-- Function: productattribute(DECFLOAT(34))

-- DROP FUNCTION productattribute(DECFLOAT(34));

CREATE OR REPLACE FUNCTION productattribute(p_m_attributesetinstance_id DECFLOAT(34))
  RETURNS VARCHAR AS

/*************************************************************************
 * Title: Return Instance Attribute Info
 * Description:
 *  
 * Test:
    SELECT ProductAttribute (M_AttributeSetInstance_ID) 
    FROM M_InOutLine WHERE M_AttributeSetInstance_ID > 0
    --
    SELECT p.Name
    FROM C_InvoiceLine il LEFT OUTER JOIN M_Product p ON (il.M_Product_ID=p.M_Product_ID);
    SELECT p.Name || ProductAttribute (il.M_AttributeSetInstance_ID) 
    FROM C_InvoiceLine il LEFT OUTER JOIN M_Product p ON (il.M_Product_ID=p.M_Product_ID);
    
 ************************************************************************/

	
DECLARE

    v_Name          VARCHAR(2000) = '';
    v_NameAdd       VARCHAR(2000) = '';
    --
    v_Lot            ANCHOR DATA TYPE TO M_AttributeSetInstance.Lot;
    v_LotStart       ANCHOR DATA TYPE TO M_AttributeSet.LotCharSOverwrite;
    v_LotEnd         ANCHOR DATA TYPE TO M_AttributeSet.LotCharEOverwrite;
    v_SerNo          ANCHOR DATA TYPE TO M_AttributeSetInstance.SerNo;
    v_SerNoStart     ANCHOR DATA TYPE TO M_AttributeSet.SerNoCharSOverwrite;
    v_SerNoEnd       ANCHOR DATA TYPE TO M_AttributeSet.SerNoCharEOverwrite;
    v_GuaranteeDate  ANCHOR DATA TYPE TO M_AttributeSetInstance.GuaranteeDate;
    
    r   RECORD;
    --

BEGIN
    --  Get Product Attribute Set Instance
    IF (p_M_AttributeSetInstance_ID > 0) THEN
        SELECT asi.Lot, asi.SerNo, asi.GuaranteeDate,
            COALESCE(a.SerNoCharSOverwrite, '#'::CHAR(1)), COALESCE(a.SerNoCharEOverwrite, ''::CHAR(1)),
            COALESCE(a.LotCharSOverwrite, '�'::CHAR(1)), COALESCE(a.LotCharEOverwrite, '�'::CHAR(1))
          INTO v_Lot, v_SerNo, v_GuaranteeDate,
            v_SerNoStart, v_SerNoEnd, v_LotStart, v_LotEnd
        FROM M_AttributeSetInstance asi
          INNER JOIN M_AttributeSet a ON (asi.M_AttributeSet_ID=a.M_AttributeSet_ID)
        WHERE asi.M_AttributeSetInstance_ID=p_M_AttributeSetInstance_ID;
        --
        IF (v_SerNo IS NOT NULL) THEN
            v_NameAdd = v_NameAdd || v_SerNoStart || v_SerNo || v_SerNoEnd || ' ';
        END IF;
        IF (v_Lot IS NOT NULL) THEN
            v_NameAdd = v_NameAdd || v_LotStart || v_Lot || v_LotEnd || ' ';
        END IF;
        IF (v_GuaranteeDate IS NOT NULL) THEN
            v_NameAdd = v_NameAdd || CAST(v_GuaranteeDate AS DATE) || ' ';
        END IF;
        --
        
        FOR r IN
	     SELECT ai.Value, a.Name
	        FROM M_AttributeInstance ai
	        INNER JOIN M_Attribute a ON (ai.M_Attribute_ID=a.M_Attribute_ID AND a.IsInstanceAttribute='Y')
        	WHERE ai.M_AttributeSetInstance_ID=p_M_AttributeSetInstance_ID
    	LOOP
            v_NameAdd = v_NameAdd || r.Name || ':' || r.Value || ' ';
        END LOOP;
        --
        IF (LENGTH(v_NameAdd) > 0) THEN
            v_Name = v_Name || ' (' || TRIM(v_NameAdd) || ')';
	ELSE 
	    v_Name = NULL;
        END IF;
    END IF;
    RETURN v_Name;
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: invoiceopentodate(DECFLOAT(34), DECFLOAT(34), TIMESTAMP)

-- DROP FUNCTION invoiceopentodate(DECFLOAT(34), DECFLOAT(34), TIMESTAMP);

CREATE OR REPLACE FUNCTION invoiceopentodate(
    p_c_invoice_id DECFLOAT(34),
    p_c_invoicepayschedule_id DECFLOAT(34),
    p_dateacct TIMESTAMP)
  RETURNS DECFLOAT(34)
DECLARE
	v_Currency_ID  DECIMAL(10);
	v_TotalOpenAmt   DECFLOAT(34) = 0;
	v_PaidAmt           DECFLOAT(34) = 0;
	v_Remaining         DECFLOAT(34) = 0;
	v_MultiplierAP      DECFLOAT(34) = 0;
	v_MultiplierCM      DECFLOAT(34) = 0;
	v_Temp              DECFLOAT(34) = 0;
	allocationline	    record;
	invoiceschedule	    record;
BEGIN
 -- Get Currency
 BEGIN
  SELECT MAX(C_Currency_ID), SUM(GrandTotal), MAX(MultiplierAP), MAX(Multiplier)
    INTO v_Currency_ID, v_TotalOpenAmt, v_MultiplierAP, v_MultiplierCM
  FROM C_Invoice_v  -- corrected for CM / Split Payment
  WHERE C_Invoice_ID = p_C_Invoice_ID
    AND DateAcct <= p_DateAcct;
 EXCEPTION -- Invoice in draft form
  WHEN OTHERS THEN
            --DBMS_OUTPUT.PUT_LINE('InvoiceOpen - ' || SQLERRM);
   RETURN NULL;
 END;
--  DBMS_OUTPUT.PUT_LINE('== C_Invoice_ID=' || p_C_Invoice_ID || ', Total=' 
-- || v_TotalOpenAmt || ', AP=' || v_MultiplierAP || ', CM=' || v_MultiplierCM);

 -- Calculate Allocated Amount
 FOR allocationline IN  
  SELECT a.AD_Client_ID, a.AD_Org_ID,
            al.Amount, al.DiscountAmt, al.WriteOffAmt,
            a.C_Currency_ID, a.DateTrx
  FROM C_ALLOCATIONLINE al
          INNER JOIN C_ALLOCATIONHDR a ON (al.C_AllocationHdr_ID=a.C_AllocationHdr_ID)
  WHERE al.C_Invoice_ID = p_C_Invoice_ID
    AND a.DateAcct <= p_DateAcct
    AND   a.DocStatus IN('CO', 'CL')
 LOOP
        v_Temp = allocationline.Amount + allocationline.DisCountAmt + allocationline.WriteOffAmt;
  v_PaidAmt = v_PaidAmt
        -- Allocation
   + Currencyconvert(v_Temp * v_MultiplierAP,
    allocationline.C_Currency_ID, v_Currency_ID, allocationline.DateTrx, NULL, 
	allocationline.AD_Client_ID, allocationline.AD_Org_ID);
      --DBMS_OUTPUT.PUT_LINE('   PaidAmt=' || v_PaidAmt || ', Allocation=' || v_Temp 
	  -- || ' * ' || v_MultiplierAP);
 END LOOP;

    --  Do we have a Payment Schedule ?
    IF (p_C_InvoicePaySchedule_ID > 0) THEN --   if not valid = lists invoice amount
        v_Remaining = v_PaidAmt;
        FOR invoiceschedule IN 
        SELECT  C_InvoicePaySchedule_ID, DueAmt FROM    C_INVOICEPAYSCHEDULE 
		WHERE C_Invoice_ID = p_C_Invoice_ID AND IsValid='Y'
        ORDER BY DueDate
        LOOP
            IF (invoiceschedule.C_InvoicePaySchedule_ID = p_C_InvoicePaySchedule_ID) THEN
                v_TotalOpenAmt = (invoiceschedule.DueAmt*v_MultiplierCM) - v_Remaining;
                IF (invoiceschedule.DueAmt - v_Remaining < 0) THEN
                    v_TotalOpenAmt = 0;
                END IF;
            --  DBMS_OUTPUT.PUT_LINE('Sched Total=' || v_TotalOpenAmt || ', Due=' 
			-- || s.DueAmt || ',Remaining=' || v_Remaining || ',CM=' || v_MultiplierCM);
            ELSE -- calculate amount, which can be allocated to next schedule
                v_Remaining = v_Remaining - invoiceschedule.DueAmt;
                IF (v_Remaining < 0) THEN
                    v_Remaining = 0;
                END IF;
            --  DBMS_OUTPUT.PUT_LINE('Remaining=' || v_Remaining);
            END IF;
        END LOOP;
    ELSE
        v_TotalOpenAmt = v_TotalOpenAmt - v_PaidAmt;
    END IF;
--  DBMS_OUTPUT.PUT_LINE('== Total=' || v_TotalOpenAmt);

 -- Ignore Rounding
 IF (v_TotalOpenAmt BETWEEN -0.00999 AND 0.00999) THEN
  v_TotalOpenAmt = 0;
 END IF;

 -- Round to penny
 v_TotalOpenAmt = ROUND(COALESCE(v_TotalOpenAmt,0), 2);
 RETURN v_TotalOpenAmt;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: linenetamtrealinvoiceline(DECFLOAT(34))

-- DROP FUNCTION linenetamtrealinvoiceline(DECFLOAT(34));

CREATE OR REPLACE FUNCTION linenetamtrealinvoiceline(p_c_invoiceline_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
          v_amt DECFLOAT(34);  
BEGIN
	select case when pl.istaxincluded = 'Y' AND t.rate <> 0 
	then round(ivl.linenetamt/(1+(t.rate/100)),cur.stdprecision) else linenetamt end  into v_amt
	from c_Invoiceline ivl
	inner join c_invoice i on ivl.c_invoice_ID = i.c_invoice_ID
	inner join m_pricelist pl on i.m_pricelist_ID = pl.m_pricelist_ID
	inner join c_Tax t on ivl.c_tax_ID = t.c_tax_ID
	inner join c_currency cur on i.c_currency_ID = cur.c_Currency_ID
	where ivl.c_invoiceline_ID=p_c_invoiceLine_ID;

    RETURN coalesce(v_amt,0);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: monthlysalary(DECFLOAT(34))

-- DROP FUNCTION monthlysalary(DECFLOAT(34));

CREATE OR REPLACE FUNCTION monthlysalary(p_c_bpartner_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
/***
 * Title:	Get Monthly Salary 
 * Description:
 *	Get Monthly Salary for a business partner flagged as employee, it search on 
 * employee detail for get result if the column MonthlySalary not is zero or null, else
 * get a concept for Monthly Salary
 *
 * Test:
 * 	SELECT monthlySalary (113); - Get monthly salary for GardenAdmin BP now
 * 	SELECT monthlySalary (113); - Get monthly salary for GardenAdmin BP now
 ************************************************************************/
BEGIN
	RETURN monthlySalaryToDate(p_C_BPartner_ID, now());
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: bomqtyavailable(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bomqtyavailable(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyavailable(
    product_id DECFLOAT(34),
    warehouse_id DECFLOAT(34),
    locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
BEGIN
	RETURN bomQtyOnHand(Product_ID, Warehouse_ID, Locator_ID) - bomQtyReserved(Product_ID, Warehouse_ID, Locator_ID);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: bomqtyonhand(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION bomqtyonhand(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION bomqtyonhand(
    product_id DECFLOAT(34),
    warehouse_id DECFLOAT(34),
    locator_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
	myWarehouse_ID		DECFLOAT(34);
 	v_Quantity		DECFLOAT(34) = 99999;	--	unlimited
	v_IsBOM			CHAR(1);
	v_IsStocked		CHAR(1);
	v_ProductType		CHAR(1);
 	v_ProductQty		DECFLOAT(34);
	v_StdPrecision		int;
	bom			record;
	
BEGIN
	--	Check Parameters
	myWarehouse_ID = Warehouse_ID;
	IF (myWarehouse_ID IS NULL) THEN
		IF (Locator_ID IS NULL) THEN
			RETURN 0;
		ELSE
			SELECT 	SUM(M_Warehouse_ID) INTO myWarehouse_ID
			FROM	M_LOCATOR
			WHERE	M_Locator_ID=Locator_ID;
		END IF;
	END IF;
	IF (myWarehouse_ID IS NULL) THEN
		RETURN 0;
	END IF;
--	DBMS_OUTPUT.PUT_LINE('Warehouse=' || myWarehouse_ID);

	--	Check, if product exists and if it is stocked
	BEGIN
		SELECT	IsBOM, ProductType, IsStocked
	 	  INTO	v_IsBOM, v_ProductType, v_IsStocked
		FROM M_PRODUCT
		WHERE M_Product_ID=Product_ID;
		--
	EXCEPTION	--	not found
		WHEN OTHERS THEN
			RETURN 0;
	END;
	--	Unimited capacity if no item
	IF (v_IsBOM='N' AND (v_ProductType<>'I' OR v_IsStocked='N')) THEN
		RETURN v_Quantity;
	--	Stocked item
	ELSIF (v_IsStocked='Y') THEN
		--	Get ProductQty
		SELECT 	COALESCE(SUM(QtyOnHand), 0)
		  INTO	v_ProductQty
		FROM 	M_STORAGE s
		WHERE M_Product_ID=Product_ID
		  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
		  	AND l.M_Warehouse_ID=myWarehouse_ID);
		--
	--	DBMS_OUTPUT.PUT_LINE('Qty=' || v_ProductQty);
		RETURN v_ProductQty;
	END IF;

	--	Go though BOM
--	DBMS_OUTPUT.PUT_LINE('BOM');
	FOR bom IN 	--	Get BOM Product info
	SELECT bl.M_Product_ID AS M_ProductBOM_ID, CASE WHEN bl.IsQtyPercentage = 'N' 
	THEN bl.QtyBOM ELSE bl.QtyBatch / 100 END AS BomQty , p.IsBOM , p.IsStocked, p.ProductType 
		FROM PP_PRODUCT_BOM b
			   INNER JOIN M_PRODUCT p ON (p.M_Product_ID=b.M_Product_ID)
			   INNER JOIN PP_PRODUCT_BOMLINE bl ON (bl.PP_Product_BOM_ID=b.PP_Product_BOM_ID)
		WHERE b.M_Product_ID = Product_ID
	LOOP
		--	Stocked Items "leaf node"
		IF (bom.ProductType = 'I' AND bom.IsStocked = 'Y') THEN
			--	Get v_ProductQty
			SELECT 	COALESCE(SUM(QtyOnHand), 0)
			  INTO	v_ProductQty
			FROM 	M_STORAGE s
			WHERE M_Product_ID=bom.M_ProductBOM_ID
			  AND EXISTS (SELECT * FROM M_LOCATOR l WHERE s.M_Locator_ID=l.M_Locator_ID
			  	AND l.M_Warehouse_ID=myWarehouse_ID);
			--	Get Rounding Precision
			SELECT 	COALESCE(MAX(u.StdPrecision), 0)
			  INTO	v_StdPrecision
			FROM 	C_UOM u, M_PRODUCT p
			WHERE u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=bom.M_ProductBOM_ID;
			--	How much can we make with this product
			v_ProductQty = ROUND (v_ProductQty/bom.BOMQty, v_StdPrecision);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		--	Another BOM
		ELSIF (bom.IsBOM = 'Y') THEN
			v_ProductQty = Bomqtyonhand (bom.M_ProductBOM_ID, myWarehouse_ID, Locator_ID);
			--	How much can we make overall
			IF (v_ProductQty < v_Quantity) THEN
				v_Quantity = v_ProductQty;
			END IF;
		END IF;
	END LOOP;	--	BOM

	IF (v_Quantity > 0) THEN
		--	Get Rounding Precision for Product
		SELECT 	COALESCE(MAX(u.StdPrecision), 0)
		  INTO	v_StdPrecision
		FROM 	C_UOM u, M_PRODUCT p
		WHERE u.C_UOM_ID=p.C_UOM_ID AND p.M_Product_ID=Product_ID;
		--
		RETURN ROUND (v_Quantity, v_StdPrecision);
	END IF;
	RETURN 0;
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: addweeks(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION addweeks(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION addweeks(
    datetime TIMESTAMP,
    weeks DECFLOAT(34))
  RETURNS date AS

 /***
 * Title:	Add Weeks to Date
 * Description:
 *	Add weeks to date
 *
 * Test:
 * 	SELECT addweeks(now(), 3) FROM DUAL; - Add weeks to current date
 ************************************************************************/
declare duration varchar;
BEGIN
	if datetime is null or weeks is null then
		return null;
	end if;
	duration = weeks || ' weeks';	 
	return cast(datetime + cast(duration as interval) as date);
END;

LANGUAGE SQL
  COST 100;
﻿-- Function: linenetamtrealorderline(DECFLOAT(34))

-- DROP FUNCTION linenetamtrealorderline(DECFLOAT(34));

CREATE OR REPLACE FUNCTION linenetamtrealorderline(p_c_orderline_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
DECLARE
          v_amt DECFLOAT(34);  
BEGIN
	select case when pl.istaxincluded = 'Y' AND t.rate <> 0 then 
	round(ol.linenetamt/(1+(t.rate/100)),cur.stdprecision) else linenetamt end  into v_amt
	from c_orderline ol
	inner join c_order o on ol.c_order_ID = o.c_order_ID
	inner join m_pricelist pl on o.m_pricelist_ID = pl.m_pricelist_ID
	inner join c_Tax t on ol.c_tax_ID = t.c_tax_ID
	inner join c_currency cur on o.c_currency_ID = cur.c_Currency_ID
	where ol.c_orderline_ID=p_c_orderLine_ID;

    RETURN coalesce(v_amt,0);
END;
LANGUAGE SQL
  COST 100;
﻿-- Function: subtractdays(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION subtractdays(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION subtractdays(
    day TIMESTAMP,
    days DECFLOAT(34))
  RETURNS date AS
BEGIN
    RETURN addDays(day,(days * -1));
END;
LANGUAGE SQL
  COST 100;
