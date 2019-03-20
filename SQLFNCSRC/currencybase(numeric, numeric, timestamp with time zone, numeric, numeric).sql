-- Function: currencybase(DECFLOAT(34), DECFLOAT(34), TIMESTAMP, DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION currencybase(DECFLOAT(34), DECFLOAT(34), TIMESTAMP, DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION currencybase(
    p_amount DECFLOAT(34),
    p_curfrom_id DECFLOAT(34),
    p_convdate TIMESTAMP,
    p_client_id DECFLOAT(34),
    p_org_id DECFLOAT(34))
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
 * 
 ***
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

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION currencybase(DECFLOAT(34), DECFLOAT(34), TIMESTAMP, DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
