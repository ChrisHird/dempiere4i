-- Function: uuid_generate_v4()

-- DROP FUNCTION uuid_generate_v4();

CREATE OR REPLACE FUNCTION uuid_generate_v4()
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_generate_v4'
  LANGUAGE c VOLATILE STRICT
  COST 1;
ALTER FUNCTION uuid_generate_v4()
  OWNER TO adempiere;
