-- Function: adddays(interval, DECFLOAT(34))

-- DROP FUNCTION adddays(interval, DECFLOAT(34));

CREATE OR REPLACE FUNCTION adddays(
    inter interval,
    days DECFLOAT(34))
  RETURNS integer AS
$BODY$
BEGIN
RETURN ( EXTRACT( EPOCH FROM ( inter ) ) / 86400 ) + days;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION adddays(interval, DECFLOAT(34))
  OWNER TO adempiere;
