-- Function: currencyconvert(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
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

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION currencyconvert(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34), 
TIMESTAMP, DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
