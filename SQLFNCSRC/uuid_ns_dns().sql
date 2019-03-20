-- Function: uuid_ns_dns()

-- DROP FUNCTION uuid_ns_dns();

CREATE OR REPLACE FUNCTION uuid_ns_dns()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_ns_dns'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION uuid_ns_dns()
  OWNER TO adempiere;
