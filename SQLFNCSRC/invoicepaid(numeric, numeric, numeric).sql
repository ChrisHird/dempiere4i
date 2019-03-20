-- Function: invoicepaid(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION invoicepaid(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION invoicepaid(
    p_c_invoice_id DECFLOAT(34),
    p_c_currency_id DECFLOAT(34),
    p_multiplierap DECFLOAT(34))
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
 ***
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

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION invoicepaid(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
