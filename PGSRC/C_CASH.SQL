-- Table: c_cash

-- DROP TABLE c_cash;

CREATE TABLE c_cash
(
  c_cash_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_cashbook_id                  FOR COLUMN c_cbid          DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  statementdate                  FOR COLUMN stmtdat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateacct                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  beginningbalance               FOR COLUMN begbal          DECFLOAT(16) NOT NULL DEFAULT 0,
  endingbalance                  FOR COLUMN endbal          DECFLOAT(16) NOT NULL DEFAULT 0,
  statementdifference            FOR COLUMN stmtdif         DECFLOAT(16) DEFAULT 0,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  docstatus                                                 CHAR(2) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_cash_pkey PRIMARY KEY (c_cash_id),
  CONSTRAINT c_cash_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_cash_processed_check CHECK (processed in ('Y','N'))
)
;

