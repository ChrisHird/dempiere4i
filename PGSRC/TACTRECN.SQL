-- Table: fact_reconciliation

-- DROP TABLE fact_reconciliation;

CREATE TABLE fact_reconciliation FOR SYSTEM NAME tactrecn
(
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  matchcode                                                 VARCHAR(60) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  fact_acct_id                   FOR COLUMN fact_aid        DECIMAL(10,0) NOT NULL,
  fact_reconciliation_id         FOR COLUMN fact_recon      DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT fact_reconciliation_key PRIMARY KEY (fact_reconciliation_id),
  CONSTRAINT fact_reconciliation_isactive_check CHECK (isactive in ('Y','N'))
)
;

