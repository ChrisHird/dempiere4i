-- Table: c_tax

-- DROP TABLE c_tax;

CREATE TABLE c_tax
(
  c_tax_id                                                  DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  name                                                      VARCHAR(60) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  taxindicator                   FOR COLUMN taxind          VARCHAR(10),
  isdocumentlevel                FOR COLUMN isdoclvl        CHAR(1) NOT NULL DEFAULT 'Y',
  validfrom                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  requirestaxcertificate         FOR COLUMN reqtaxcert      CHAR(1) NOT NULL DEFAULT 'N',
  rate                                                      DECFLOAT(16) NOT NULL,
  parent_tax_id                  FOR COLUMN ptaxid          DECIMAL(10,0),
  c_country_id                   FOR COLUMN c_cntyid        DECIMAL(10,0),
  c_region_id                    FOR COLUMN c_rid           DECIMAL(10,0),
  to_country_id                  FOR COLUMN tocntyid        DECIMAL(10,0),
  to_region_id                   FOR COLUMN torgnid         DECIMAL(10,0),
  c_taxcategory_id               FOR COLUMN c_tcid          DECIMAL(10,0) NOT NULL,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  istaxexempt                    FOR COLUMN istxexmp        CHAR(1) NOT NULL DEFAULT 'N',
  sopotype                                                  CHAR(1) NOT NULL DEFAULT 'B',
  issalestax                                                CHAR(1) NOT NULL DEFAULT 'N',
  ad_rule_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_tax_pkey PRIMARY KEY (c_tax_id),
  CONSTRAINT c_tax_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_tax_isdocumentlevel_check CHECK (isdocumentlevel in ('Y','N')),
  CONSTRAINT c_tax_requirestaxcertificate_check CHECK (requirestaxcertificate in ('Y','N'))
)
;

