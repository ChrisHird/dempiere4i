-- Table: m_attribute

-- DROP TABLE m_attribute;

CREATE TABLE m_attribute FOR SYSTEM NAME matr
(
  m_attribute_id                 FOR COLUMN m_aid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ismandatory                    FOR COLUMN ismand          CHAR(1) NOT NULL DEFAULT 'N',
  isinstanceattribute            FOR COLUMN isinstatr       CHAR(1) NOT NULL DEFAULT 'N',
  m_attributesearch_id           FOR COLUMN m_asid          DECIMAL(10,0),
  attributevaluetype             FOR COLUMN atrvaltyp       CHAR(1) NOT NULL DEFAULT 'S',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_attribute_pkey PRIMARY KEY (m_attribute_id),
  CONSTRAINT m_attribute_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_attribute_isinstanceattribute_check CHECK (isinstanceattribute in ('Y','N')),
  CONSTRAINT m_attribute_ismandatory_check CHECK (ismandatory in ('Y','N'))
)
;

