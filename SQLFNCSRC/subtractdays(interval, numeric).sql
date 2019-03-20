-- Function: subtractdays(interval, DECFLOAT(34))

-- DROP FUNCTION subtractdays(interval, DECFLOAT(34));

CREATE OR REPLACE FUNCTION subtractdays(
    inter interval,
    days DECFLOAT(34))
  RETURNS integer AS
$BODY$
BEGIN
RETURN ( EXTRACT( EPOCH FROM ( inter ) ) / 86400 ) - days;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION subtractdays(interval, DECFLOAT(34))
  OWNER TO adempiere;
