-- Table: c_bankaccount

-- DROP TABLE c_bankaccount;

CREATE TABLE c_bankaccount FOR SYSTEM NAME cbacct
(
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bank_id                                                 DECIMAL(10,0) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  bankaccounttype                FOR COLUMN bacttyp         CHAR(1) NOT NULL,
  accountno                                                 VARCHAR(20) NOT NULL,
  currentbalance                 FOR COLUMN curbal          DECFLOAT(16) NOT NULL DEFAULT 0,
  creditlimit                    FOR COLUMN crdlmt          DECFLOAT(16) NOT NULL DEFAULT 0,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  iban                                                      VARCHAR(40),
  description                    FOR COLUMN desc            VARCHAR(255),
  bban                                                      VARCHAR(40),
  paymentexportclass             FOR COLUMN pmtexcls        VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  issotrx                                                   CHAR(1) DEFAULT 'N',
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  CONSTRAINT c_bankaccount_pkey PRIMARY KEY (c_bankaccount_id),
  CONSTRAINT c_bankaccount_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bankaccount_issotrx_check CHECK (issotrx in ('Y','N'))
)
;

