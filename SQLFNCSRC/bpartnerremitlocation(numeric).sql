-- Function: bpartnerremitlocation(DECFLOAT(34))

-- DROP FUNCTION bpartnerremitlocation(DECFLOAT(34));

CREATE OR REPLACE FUNCTION bpartnerremitlocation(p_c_bpartner_id DECFLOAT(34))
  RETURNS DECFLOAT(34)
$BODY$

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

$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION bpartnerremitlocation(DECFLOAT(34))
  OWNER TO adempiere;
