-- Function: uuid_nil()

-- DROP FUNCTION uuid_nil();

CREATE OR REPLACE FUNCTION uuid_nil()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_nil'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION uuid_nil()
  OWNER TO adempiere;
