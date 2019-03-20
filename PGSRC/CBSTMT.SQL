-- Table: c_bankstatement

-- DROP TABLE c_bankstatement;

CREATE TABLE c_bankstatement FOR SYSTEM NAME cbstmt
(
  c_bankstatement_id             FOR COLUMN c_bsid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ismanual                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  statementdate                  FOR COLUMN stmtdat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  beginningbalance               FOR COLUMN begbal          DECFLOAT(16) DEFAULT 0,
  endingbalance                  FOR COLUMN endbal          DECFLOAT(16) NOT NULL DEFAULT 0,
  statementdifference            FOR COLUMN stmtdif         DECFLOAT(16) DEFAULT 0,
  createfrom                                                CHAR(1) DEFAULT 'N',
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  eftstatementreference          FOR COLUMN eftstref        VARCHAR(60),
  eftstatementdate               FOR COLUMN eftstdat        TIMESTAMP,
  matchstatement                 FOR COLUMN mchstm          CHAR(1),
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  docstatus                                                 CHAR(2) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  documentno                                                VARCHAR(30) DEFAULT NULL,
  CONSTRAINT c_bankstatement_pkey PRIMARY KEY (c_bankstatement_id),
  CONSTRAINT c_bankstatement_createfrom_check CHECK (createfrom in ('Y','N')),
  CONSTRAINT c_bankstatement_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bankstatement_ismanual_check CHECK (ismanual in ('Y','N')),
  CONSTRAINT c_bankstatement_processed_check CHECK (processed in ('Y','N'))
)
;

