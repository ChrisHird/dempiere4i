-- Table: c_invoicetax

-- DROP TABLE c_invoicetax;

CREATE TABLE c_invoicetax FOR SYSTEM NAME cinvtax
(
  c_tax_id                                                  DECIMAL(10,0) NOT NULL,
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  taxbaseamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  taxamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  istaxincluded                  FOR COLUMN itinc           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_invoicetax_pkey PRIMARY KEY (c_tax_id, c_invoice_id),
  CONSTRAINT c_invoicetax_isactive_check CHECK (isactive in ('Y','N'))
)
;

