-- Function: paymenttermdiscount(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP, TIMESTAMP)

-- DROP FUNCTION paymenttermdiscount(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP, TIMESTAMP);

CREATE OR REPLACE FUNCTION paymenttermdiscount(
    amount DECFLOAT(34),
    currency_id DECFLOAT(34),
    paymentterm_id DECFLOAT(34),
    docdate TIMESTAMP,
    paydate TIMESTAMP)
  RETURNS DECFLOAT(34)
$BODY$
/*************************************************************************
 * The contents of this file are subject to the Compiere License.  You may
 * obtain a copy of the License at    http://www.compiere.org/license.html
 * Software is on an  "AS IS" basis,  WITHOUT WARRANTY OF ANY KIND, either
 * express or implied. See the License for details. Code: Compiere ERP+CRM
 * Copyright (C) 1999-2001 Jorg Janke, ComPiere, Inc. All Rights Reserved.
 *
 * converted to postgreSQL by Karsten Thiemann (Schaeffer AG), 
 * kthiemann@org
 *************************************************************************
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

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION paymenttermdiscount(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
TIMESTAMP, TIMESTAMP)
  OWNER TO adempiere;
