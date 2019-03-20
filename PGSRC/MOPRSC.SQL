-- Table: m_operationresource

-- DROP TABLE m_operationresource;

CREATE TABLE m_operationresource FOR SYSTEM NAME moprsc
(
  m_operationresource_id         FOR COLUMN m_oprscid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_productoperation_id          FOR COLUMN m_poprid        DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  a_asset_id                                                DECIMAL(10,0),
  c_job_id                                                  DECIMAL(10,0),
  setuptime                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  unitruntime                    FOR COLUMN untrtim         DECFLOAT(16) NOT NULL DEFAULT 0,
  teardowntime                   FOR COLUMN tdtime          DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_operationresource_pkey PRIMARY KEY (m_operationresource_id)
)
  ;
