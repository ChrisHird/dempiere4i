-- Table: m_attributevalue

-- DROP TABLE m_attributevalue;

CREATE TABLE m_attributevalue FOR SYSTEM NAME matrval
(
  m_attributevalue_id            FOR COLUMN m_avid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_attribute_id                 FOR COLUMN m_aid           DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_attributevalue_pkey PRIMARY KEY (m_attributevalue_id),
  CONSTRAINT m_attributevalue_isactive_check CHECK (isactive in ('Y','N'))
)
;

