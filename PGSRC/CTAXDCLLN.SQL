-- Table: c_taxdeclarationline

-- DROP TABLE c_taxdeclarationline;

CREATE TABLE c_taxdeclarationline FOR SYSTEM NAME ctaxdclln
(
  c_taxdeclarationline_id        FOR COLUMN c_txdlnid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  ismanual                                                  CHAR(1) NOT NULL DEFAULT 'N',
  c_taxdeclaration_id            FOR COLUMN c_txdid         DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_tax_id                                                  DECIMAL(10,0) NOT NULL,
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0),
  c_allocationline_id            FOR COLUMN c_alid          DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  taxbaseamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  taxamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  dateacct                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_taxdeclarationline_pkey PRIMARY KEY (c_taxdeclarationline_id),
  CONSTRAINT c_taxdeclarationline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_taxdeclarationline_ismanual_check CHECK (ismanual in ('Y','N'))
)
;

