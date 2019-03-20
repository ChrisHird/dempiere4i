-- Table: t_selection2

-- DROP TABLE t_selection2;

CREATE TABLE t_selection2 FOR SYSTEM NAME tsel2
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  query_id                                                  DECFLOAT(16) NOT NULL,
  t_selection_id                 FOR COLUMN t_sid           DECIMAL(10,0) NOT NULL,
  CONSTRAINT t_selection2_pkey PRIMARY KEY (ad_pinstance_id, query_id, t_selection_id)
)
;

