-- Function: uuid_generate_v1()

-- DROP FUNCTION uuid_generate_v1();

CREATE OR REPLACE FUNCTION uuid_generate_v1()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_generate_v1'
  LANGUAGE c VOLATILE STRICT
  COST 1;
ALTER FUNCTION uuid_generate_v1()
  OWNER TO adempiere;
