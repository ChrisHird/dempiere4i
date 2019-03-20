-- Function: trunc(interval)

-- DROP FUNCTION trunc(interval);

CREATE OR REPLACE FUNCTION trunc(i interval)
  RETURNS integer AS
$BODY$
BEGIN
	RETURN EXTRACT(DAY FROM i);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION trunc(interval)
  OWNER TO adempiere;
