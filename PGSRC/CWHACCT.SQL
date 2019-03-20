-- Table: c_withholding_acct

-- DROP TABLE c_withholding_acct;

CREATE TABLE c_withholding_acct FOR SYSTEM NAME cwhacct
(
  c_withholding_id               FOR COLUMN c_wid           DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  withholding_acct               FOR COLUMN wha             DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_withholding_acct_pkey PRIMARY KEY (c_withholding_id, c_acctschema_id),
  CONSTRAINT c_withholding_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

