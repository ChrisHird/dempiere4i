-- Table: c_cashflow

-- DROP TABLE c_cashflow;

CREATE TABLE c_cashflow
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_cashflow_id                  FOR COLUMN c_cfid          DECIMAL(10,0) NOT NULL,
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  c_paymentterm_id               FOR COLUMN c_ptid          DECIMAL(10,0) NOT NULL,
  dateinvoiced                   FOR COLUMN datinv          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  duedate                                                   TIMESTAMP,
  grandtotal                                                DECFLOAT(16),
  issotrx                                                   CHAR(1) DEFAULT NULL,
  name                                                      VARCHAR(60) DEFAULT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0),
  processed                                                 CHAR(1) DEFAULT 'N',
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  processing                                                CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_cashflow_key PRIMARY KEY (c_cashflow_id),
  CONSTRAINT c_cashflow_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_cashflow_issotrx_check CHECK (issotrx in ('Y','N')),
  CONSTRAINT c_cashflow_processed_check CHECK (processed in ('Y','N'))
)
;

