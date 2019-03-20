-- Table: c_taxdefinition

-- DROP TABLE c_taxdefinition;

CREATE TABLE c_taxdefinition FOR SYSTEM NAME ctaxdfn
(
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  name                                                      VARCHAR(60) NOT NULL,
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_taxbase_id                   FOR COLUMN c_tbid          DECIMAL(10,0),
  c_taxcategory_id               FOR COLUMN c_tcid          DECIMAL(10,0),
  c_taxdefinition_id             FOR COLUMN c_txdefid       DECIMAL(10,0) NOT NULL,
  c_taxgroup_id                  FOR COLUMN c_txgrpid       DECIMAL(10,0),
  c_taxtype_id                   FOR COLUMN c_txtypid       DECIMAL(10,0),
  c_tax_id                                                  DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL,
  isinvoiced                                                CHAR(1),
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  maxtaxable                                                DECIMAL(10,0),
  mintaxable                                                DECIMAL(10,0),
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  ad_orgtype_id                  FOR COLUMN ad_otypid       DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_taxdefinition_pkey PRIMARY KEY (c_taxdefinition_id),
  CONSTRAINT c_taxdefinition_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_taxdefinition_isinvoiced_check CHECK (isinvoiced in ('Y','N'))
)
;

