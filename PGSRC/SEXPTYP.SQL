-- Table: s_expensetype

-- DROP TABLE s_expensetype;

CREATE TABLE s_expensetype FOR SYSTEM NAME sexptyp
(
  s_expensetype_id               FOR COLUMN s_etid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isinvoiced                                                CHAR(1) NOT NULL DEFAULT 'Y',
  c_uom_id                                                  DECIMAL(10,0) NOT NULL,
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0) NOT NULL,
  c_taxcategory_id               FOR COLUMN c_tcid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_taxtype_id                   FOR COLUMN c_txtypid       DECIMAL(10,0),
  CONSTRAINT s_expensetype_pkey PRIMARY KEY (s_expensetype_id),
  CONSTRAINT s_expensetype_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT s_expensetype_isinvoiced_check CHECK (isinvoiced in ('Y','N'))
)
;

