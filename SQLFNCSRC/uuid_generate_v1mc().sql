-- Function: uuid_generate_v1mc()

-- DROP FUNCTION uuid_generate_v1mc();

CREATE OR REPLACE FUNCTION uuid_generate_v1mc()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_generate_v1mc'
  LANGUAGE c VOLATILE STRICT
  COST 1;
ALTER FUNCTION uuid_generate_v1mc()
  OWNER TO adempiere;
