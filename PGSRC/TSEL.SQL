-- Table: t_selection

-- DROP TABLE t_selection;

CREATE TABLE t_selection FOR SYSTEM NAME tsel
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  t_selection_id                 FOR COLUMN t_sid           DECIMAL(10,0) NOT NULL,
  CONSTRAINT t_selection_pkey PRIMARY KEY (ad_pinstance_id, t_selection_id)
)
;

