-- Table: c_paymentbatch

-- DROP TABLE c_paymentbatch;

CREATE TABLE c_paymentbatch FOR SYSTEM NAME cpayb
(
  c_paymentbatch_id              FOR COLUMN c_pbid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  c_paymentprocessor_id          FOR COLUMN c_ppid          DECIMAL(10,0),
  documentno                                                VARCHAR(30),
  processingdate                 FOR COLUMN pdate           TIMESTAMP,
  processing                                                CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_paymentbatch_pkey PRIMARY KEY (c_paymentbatch_id),
  CONSTRAINT c_paymentbatch_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_paymentbatch_processed_check CHECK (processed in ('Y','N'))
)
;

