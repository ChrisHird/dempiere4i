-- Function: get_sysconfig(character varying, character varying, DECFLOAT(34), DECFLOAT(34))

-- DROP FUNCTION get_sysconfig(character varying, character varying, DECFLOAT(34), DECFLOAT(34));

CREATE OR REPLACE FUNCTION get_sysconfig(
    sysconfig_name character varying,
    defaultvalue character varying,
    client_id DECFLOAT(34),
    org_id DECFLOAT(34))
  RETURNS character varying AS
$BODY$
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
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION get_sysconfig(character varying, character varying, DECFLOAT(34), DECFLOAT(34))
  OWNER TO adempiere;
