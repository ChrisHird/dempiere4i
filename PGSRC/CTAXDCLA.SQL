-- Table: c_taxdeclarationacct

-- DROP TABLE c_taxdeclarationacct;

CREATE TABLE c_taxdeclarationacct FOR SYSTEM NAME ctaxdcla
(
  c_taxdeclarationacct_id        FOR COLUMN c_txdaid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_taxdeclaration_id            FOR COLUMN c_txdid         DECIMAL(10,0) NOT NULL,
  fact_acct_id                   FOR COLUMN fact_aid        DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_taxdeclarationacct_pkey PRIMARY KEY (c_taxdeclarationacct_id),
  CONSTRAINT c_taxdeclarationacct_isactive_check CHECK (isactive in ('Y','N'))
)
;

