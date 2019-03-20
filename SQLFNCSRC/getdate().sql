-- Function: getdate()

-- DROP FUNCTION getdate();

CREATE OR REPLACE FUNCTION getdate()
  RETURNS TIMESTAMP AS
$BODY$
BEGIN
    RETURN now();
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION getdate()
  OWNER TO adempiere;
