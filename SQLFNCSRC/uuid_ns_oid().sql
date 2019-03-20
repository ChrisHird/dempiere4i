-- Function: uuid_ns_oid()

-- DROP FUNCTION uuid_ns_oid();

CREATE OR REPLACE FUNCTION uuid_ns_oid()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_ns_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION uuid_ns_oid()
  OWNER TO adempiere;
