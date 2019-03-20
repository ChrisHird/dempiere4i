-- Table: t_selection_browse

-- DROP TABLE t_selection_browse;

CREATE TABLE t_selection_browse FOR SYSTEM NAME tselbws
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECFLOAT(16) NOT NULL,
  t_selection_id                 FOR COLUMN t_sid           DECFLOAT(16) NOT NULL,
  columnname                                                VARCHAR(255) NOT NULL,
  value_string                   FOR COLUMN value_str       VARCHAR(255),
  value_date                                                TIMESTAMP,
  value_number                   FOR COLUMN value_num       DECFLOAT(16),
  info                                                      VARCHAR(60),
  CONSTRAINT t_selection_browse_key PRIMARY KEY (ad_pinstance_id, t_selection_id, columnname)
)
;

