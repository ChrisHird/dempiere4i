-- Function: uuid_ns_x500()

-- DROP FUNCTION uuid_ns_x500();

CREATE OR REPLACE FUNCTION uuid_ns_x500()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_ns_x500'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION uuid_ns_x500()
  OWNER TO adempiere;
