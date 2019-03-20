-- Table: m_attributesearch

-- DROP TABLE m_attributesearch;

CREATE TABLE m_attributesearch FOR SYSTEM NAME matrsrch
(
  m_attributesearch_id           FOR COLUMN m_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_attributesearch_pkey PRIMARY KEY (m_attributesearch_id),
  CONSTRAINT m_attributesearch_isactive_check CHECK (isactive in ('Y','N'))
)
;

