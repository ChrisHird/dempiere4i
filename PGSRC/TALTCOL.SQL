-- Table: t_alter_column

-- DROP TABLE t_alter_column;

CREATE TABLE t_alter_column FOR SYSTEM NAME taltcol
(
  tablename                                                 name,
  columnname                                                name,
  datatype                                                  name,
  nullclause                                                VARCHAR(10),
  defaultclause                  FOR COLUMN dftclause       VARCHAR(200)
)
;

-- Rule: alter_column_rule ON t_alter_column

-- DROP RULE alter_column_rule ON t_alter_column;

CREATE OR REPLACE RULE alter_column_rule AS
    ON INSERT TO taltcol DO INSTEAD  SELECT altercolumn(new.tablename, new.columnname,
    new.datatype, new.nullclause, new.defaultclause) AS altercolumn;

