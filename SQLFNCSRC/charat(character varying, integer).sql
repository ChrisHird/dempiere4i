-- Function: charat(character varying, integer)

-- DROP FUNCTION charat(character varying, integer);

CREATE OR REPLACE FUNCTION charat(
    character varying,
    integer)
  RETURNS character varying AS
$BODY$
 BEGIN
 RETURN SUBSTR($1, $2, 1);
 END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION charat(character varying, integer)
  OWNER TO adempiere;
