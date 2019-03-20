-- Table: t_reconciliation

-- DROP TABLE t_reconciliation;

CREATE TABLE t_reconciliation FOR SYSTEM NAME trecon
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0),
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  fact_acct_id                   FOR COLUMN fact_aid        DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  matchcode                                                 VARCHAR(60) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_reconciliation_isactive_check CHECK (isactive in ('Y','N'))
)
;

