-- Function: add_months(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION add_months(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION add_months(
    datetime TIMESTAMP,
    months DECFLOAT(34))
  RETURNS date AS
$BODY$
declare duration varchar;
BEGIN
	if datetime is null or months is null then
		return null;
	end if;
	duration = months || ' month';	 
	return cast(datetime + cast(duration as interval) as date);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION add_months(TIMESTAMP, DECFLOAT(34))
  OWNER TO adempiere;
