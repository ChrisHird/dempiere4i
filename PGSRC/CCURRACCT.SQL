-- Table: c_currency_acct

-- DROP TABLE c_currency_acct;

CREATE TABLE c_currency_acct FOR SYSTEM NAME ccurracct
(
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  unrealizedgain_acct            FOR COLUMN unrga           DECIMAL(10,0) NOT NULL,
  unrealizedloss_acct            FOR COLUMN unrla           DECIMAL(10,0) NOT NULL,
  realizedgain_acct              FOR COLUMN rga             DECIMAL(10,0) NOT NULL,
  realizedloss_acct              FOR COLUMN rla             DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_currency_acct_pkey PRIMARY KEY (c_acctschema_id, c_currency_id),
  CONSTRAINT c_currency_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

