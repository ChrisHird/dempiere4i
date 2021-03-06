﻿-- Function: uuid_generate_v5(uuid, text)

-- DROP FUNCTION uuid_generate_v5(uuid, text);

CREATE OR REPLACE FUNCTION uuid_generate_v5(
    namespace uuid,
    name text)
  RETURNS uuid AS
'$libdir/uuid-ossp', 'uuid_generate_v5'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;
ALTER FUNCTION uuid_generate_v5(uuid, text)
  OWNER TO adempiere;
