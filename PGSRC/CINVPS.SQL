-- Table: c_invoicepayschedule

-- DROP TABLE c_invoicepayschedule;

CREATE TABLE c_invoicepayschedule FOR SYSTEM NAME cinvps
(
  c_invoicepayschedule_id        FOR COLUMN c_ipsid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0) NOT NULL,
  c_payschedule_id               FOR COLUMN c_psid          DECIMAL(10,0),
  duedate                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dueamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  discountdate                   FOR COLUMN dscdat           TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_invoicepayschedule_pkey PRIMARY KEY (c_invoicepayschedule_id),
  CONSTRAINT c_invoicepayschedule_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_invoicepayschedule_isvalid_check CHECK (isvalid in ('Y','N'))
)
;

