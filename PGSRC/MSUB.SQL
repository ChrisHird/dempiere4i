-- Table: m_substitute

-- DROP TABLE m_substitute;

CREATE TABLE m_substitute FOR SYSTEM NAME msub
(
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  substitute_id                  FOR COLUMN subid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_substitute_pkey PRIMARY KEY (m_product_id, substitute_id),
  CONSTRAINT m_substitute_isactive_check CHECK (isactive in ('Y','N'))
)
;

