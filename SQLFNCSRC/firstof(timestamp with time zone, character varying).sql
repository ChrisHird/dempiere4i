-- Function: firstof(TIMESTAMP, character varying)

-- DROP FUNCTION firstof(TIMESTAMP, character varying);

CREATE OR REPLACE FUNCTION firstof(
    TIMESTAMP,
    character varying)
  RETURNS date AS
$BODY$
DECLARE
datepart VARCHAR;
datetime TIMESTAMP;
offsetdays INTEGER;
BEGIN
	datepart = $2;
	offsetdays = 0;
	IF $2 IN ('') THEN
		datepart = 'millennium';
	ELSEIF $2 IN ('') THEN
		datepart = 'century';
	ELSEIF $2 IN ('') THEN
		datepart = 'decade';
	ELSEIF $2 IN ('IYYY','IY','I') THEN
		datepart = 'year';
	ELSEIF $2 IN ('SYYYY','YYYY','YEAR','SYEAR','YYY','YY','Y') THEN
		datepart = 'year';
	ELSEIF $2 IN ('Q') THEN
		datepart = 'quarter';
	ELSEIF $2 IN ('MONTH','MON','MM','RM') THEN
		datepart = 'month';
	ELSEIF $2 IN ('IW') THEN
		datepart = 'week';
	ELSEIF $2 IN ('W') THEN
		datepart = 'week';
	ELSEIF $2 IN ('DDD','DD','J') THEN
		datepart = 'day';
	ELSEIF $2 IN ('DAY','DY','D') THEN
		datepart = 'week';
		-- move to sunday to make it compatible with oracle and SQLJ
		offsetdays = -1;
	ELSEIF $2 IN ('HH','HH12','HH24') THEN
		datepart = 'hour';
	ELSEIF $2 IN ('MI') THEN
		datepart = 'minute';
	ELSEIF $2 IN ('') THEN
		datepart = 'second';
	ELSEIF $2 IN ('') THEN
		datepart = 'milliseconds';
	ELSEIF $2 IN ('') THEN
		datepart = 'microseconds';
	END IF;
	datetime = date_trunc(datepart, $1); 
RETURN cast(datetime as date) + offsetdays;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION firstof(TIMESTAMP, character varying)
  OWNER TO adempiere;
