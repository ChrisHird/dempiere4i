-- Function: uuid_ns_url()

-- DROP FUNCTION uuid_ns_url();

CREATE OR REPLACE FUNCTION uuid_ns_url()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_ns_url'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION uuid_ns_url()
  OWNER TO adempiere;
