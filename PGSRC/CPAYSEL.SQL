-- Table: c_payselection

-- DROP TABLE c_payselection;

CREATE TABLE c_payselection FOR SYSTEM NAME cpaysel
(
  c_payselection_id              FOR COLUMN c_pselid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0),
  paydate                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'Y',
  totalamt                                                  DECFLOAT(16) NOT NULL DEFAULT 0,
  createfrom                                                CHAR(1),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  documentno                                                VARCHAR(60) DEFAULT NULL,
  datedoc                                                   TIMESTAMP,
  docstatus                                                 VARCHAR(2) DEFAULT 'DR',
  docaction                                                 CHAR(2) DEFAULT 'CO',
  createfrominvoice              FOR COLUMN crtfrminv       CHAR(1) DEFAULT NULL,
  createfromorder                FOR COLUMN crtfrmord       CHAR(1) DEFAULT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_payselection_pkey PRIMARY KEY (c_payselection_id),
  CONSTRAINT c_payselection_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_payselection_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT c_payselection_processed_check CHECK (processed in ('Y','N'))
)
;

