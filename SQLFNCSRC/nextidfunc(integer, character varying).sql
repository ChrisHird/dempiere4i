-- Function: nextidfunc(integer, character varying)

-- DROP FUNCTION nextidfunc(integer, character varying);

CREATE OR REPLACE FUNCTION nextidfunc(
    p_ad_sequence_id integer,
    p_system character varying)
  RETURNS integer AS
$BODY$
DECLARE
          o_NextIDFunc INTEGER;
	  dummy INTEGER;
BEGIN
    o_NextIDFunc = nextid(p_AD_Sequence_ID, p_System);
    RETURN o_NextIDFunc;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION nextidfunc(integer, character varying)
  OWNER TO adempiere;
