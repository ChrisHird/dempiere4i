-- Table: c_allocationhdr

-- DROP TABLE c_allocationhdr;

CREATE TABLE c_allocationhdr FOR SYSTEM NAME calchdr
(
  c_allocationhdr_id             FOR COLUMN c_ahid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  datetrx                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateacct                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  approvalamt                    FOR COLUMN appamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  ismanual                                                  CHAR(1) NOT NULL DEFAULT 'N',
  docstatus                                                 CHAR(2) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  CONSTRAINT c_allocationhdr_pkey PRIMARY KEY (c_allocationhdr_id),
  CONSTRAINT c_allocationhdr_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_allocationhdr_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT c_allocationhdr_ismanual_check CHECK (ismanual in ('Y','N')),
  CONSTRAINT c_allocationhdr_processed_check CHECK (processed in ('Y','N'))
)
;

