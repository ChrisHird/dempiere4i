-- Function: subtractdays(TIMESTAMP, DECFLOAT(34))

-- DROP FUNCTION subtractdays(TIMESTAMP, DECFLOAT(34));

CREATE OR REPLACE FUNCTION subtractdays(
    day TIMESTAMP,
    days DECFLOAT(34))
  RETURNS date AS
$BODY$
BEGIN
    RETURN addDays(day,(days * -1));
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION subtractdays(TIMESTAMP, DECFLOAT(34))
  OWNER TO adempiere;
