-- Table: m_productoperation

-- DROP TABLE m_productoperation;

CREATE TABLE m_productoperation FOR SYSTEM NAME mprdopn
(
  m_productoperation_id          FOR COLUMN m_poprid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  setuptime                                                 DECFLOAT(16) DEFAULT 0,
  unitruntime                    FOR COLUMN untrtim         DECFLOAT(16) DEFAULT 0,
  teardowntime                   FOR COLUMN tdtime          DECFLOAT(16) DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_productoperation_pkey PRIMARY KEY (m_productoperation_id),
  CONSTRAINT m_productoperation_isactive_check CHECK (isactive in ('Y','N'))
)
;

