-- Function: adddays(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION adddays(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION adddays(
    datetime TIMESTAMP,
    days DECFLOAT(34))
  RETURNS date AS
$BODY$
declare duration varchar;
BEGIN
	if datetime is null or days is null then
		return null;
	end if;
	duration = days || ' day';	 
	return cast(date_trunc('day',datetime) + cast(duration as interval) as date);
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION adddays(TIMESTAMP, DECFLOAT(34))
  OWNER TO adempiere;
