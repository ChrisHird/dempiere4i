-- Function: trunc(TIMESTAMP, character varying)

-- DROP FUNCTION trunc(TIMESTAMP, character varying);

CREATE OR REPLACE FUNCTION trunc(
    datetime TIMESTAMP,
    format character varying)
  RETURNS date AS
$BODY$
BEGIN
	IF format = 'Q' THEN
		RETURN CAST(DATE_Trunc('quarter',datetime) as DATE);
	ELSIF format = 'Y' or format = 'YEAR' THEN
		RETURN CAST(DATE_Trunc('year',datetime) as DATE);
	ELSIF format = 'MM' or format = 'MONTH' THEN
		RETURN CAST(DATE_Trunc('month',datetime) as DATE);
	ELSIF format = 'DD' THEN
		RETURN CAST(DATE_Trunc('day',datetime) as DATE);
	ELSIF format = 'DY' THEN
		RETURN CAST(DATE_Trunc('day',datetime) as DATE);
	ELSE
		RETURN CAST(datetime AS DATE);
	END IF;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION trunc(TIMESTAMP, character varying)
  OWNER TO adempiere;
