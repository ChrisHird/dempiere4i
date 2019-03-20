-- Function: invoicepaidtodate(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP)

-- DROP FUNCTION invoicepaidtodate(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP);

CREATE OR REPLACE FUNCTION invoicepaidtodate(
    p_c_invoice_id DECFLOAT(34),
    p_c_currency_id DECFLOAT(34),
    p_multiplierap DECFLOAT(34),
    p_dateacct TIMESTAMP)
  RETURNS DECFLOAT(34)
$BODY$
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
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION invoicepaidtodate(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), TIMESTAMP)
  OWNER TO adempiere;
