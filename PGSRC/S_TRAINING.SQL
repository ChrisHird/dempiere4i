-- Table: s_training

-- DROP TABLE s_training;

CREATE TABLE s_training
(
  s_training_id                  FOR COLUMN s_tid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  documentnote                   FOR COLUMN docnote         VARCHAR(2000),
  imageurl                                                  VARCHAR(120),
  descriptionurl                 FOR COLUMN descurl         VARCHAR(120),
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0) NOT NULL,
  c_taxcategory_id               FOR COLUMN c_tcid          DECIMAL(10,0) NOT NULL,
  c_uom_id                                                  DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_taxtype_id                   FOR COLUMN c_txtypid       DECIMAL(10,0),
  CONSTRAINT s_training_pkey PRIMARY KEY (s_training_id),
  CONSTRAINT s_training_isactive_check CHECK (isactive in ('Y','N'))
)
;

