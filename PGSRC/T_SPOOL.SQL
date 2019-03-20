-- Table: t_spool

-- DROP TABLE t_spool;

CREATE TABLE t_spool
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  msgtext                                                   VARCHAR(2000) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_spool_pkey PRIMARY KEY (ad_pinstance_id, seqno)
)
  ;
