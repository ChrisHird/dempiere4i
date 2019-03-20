-- Table: c_paymentallocate

-- DROP TABLE c_paymentallocate;

CREATE TABLE c_paymentallocate FOR SYSTEM NAME cpmtalc
(
  c_paymentallocate_id           FOR COLUMN c_pmtalcid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0) NOT NULL,
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0) NOT NULL,
  amount                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  writeoffamt                    FOR COLUMN woamt           DECFLOAT(16) NOT NULL DEFAULT 0,
  overunderamt                   FOR COLUMN ouamt           DECFLOAT(16) NOT NULL DEFAULT 0,
  invoiceamt                                                DECFLOAT(16) DEFAULT 0,
  c_allocationline_id            FOR COLUMN c_alid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_paymentallocate_pkey PRIMARY KEY (c_paymentallocate_id),
  CONSTRAINT c_paymentallocate_isactive_check CHECK (isactive in ('Y','N'))
)
;

