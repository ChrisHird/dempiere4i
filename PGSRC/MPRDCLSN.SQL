-- Table: m_product_classification

-- DROP TABLE m_product_classification;

CREATE TABLE m_product_classification FOR SYSTEM NAME mprdclsn
(
  m_product_classification_id    FOR COLUMN m_prdcfnid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isdefault                                                 CHAR(1) NOT NULL,
  m_classification_parent_id     FOR COLUMN m_clnpid        DECIMAL(10,0),
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(12) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_product_classification_key PRIMARY KEY (m_product_classification_id),
  CONSTRAINT m_product_classification_value UNIQUE (ad_client_id, value),
  CONSTRAINT m_product_classification_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_product_classification_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

