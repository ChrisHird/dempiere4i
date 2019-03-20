-- Function: instr(character varying, character varying)

-- DROP FUNCTION instr(character varying, character varying);

CREATE OR REPLACE FUNCTION instr(
    character varying,
    character varying)
  RETURNS integer AS
$BODY$
DECLARE
    pos integer;
BEGIN
    pos= instr($1, $2, 1);
    RETURN pos;
END;
$BODY$
  LANGUAGE plpgsql IMMUTABLE STRICT
  COST 100;
ALTER FUNCTION instr(character varying, character varying)
  OWNER TO adempiere;
