-- Function: acctbalance(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION acctbalance(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION acctbalance(
    p_account_id DECFLOAT(34),
    p_amtdr DECFLOAT(34),
    p_amtcr DECFLOAT(34))
  RETURNS DECFLOAT(34)
$BODY$
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

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION acctbalance(DECFLOAT(34), DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
