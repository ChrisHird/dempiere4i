-- Function: unaccent_string(text)

-- DROP FUNCTION unaccent_string(text);

CREATE OR REPLACE FUNCTION unaccent_string(p_text text)
  RETURNS text AS
$BODY$
BEGIN
	return unaccent_string(p_text, 1);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION unaccent_string(text)
  OWNER TO adempiere;
COMMENT ON FUNCTION unaccent_string(text) IS 'Remove diacritings from given text';
