-- Table: m_attributeuse

-- DROP TABLE m_attributeuse;

CREATE TABLE m_attributeuse FOR SYSTEM NAME matruse
(
  m_attribute_id                 FOR COLUMN m_aid           DECIMAL(10,0) NOT NULL,
  m_attributeset_id              FOR COLUMN m_atsid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_attributeuse_pkey PRIMARY KEY (m_attribute_id, m_attributeset_id),
  CONSTRAINT m_attributeuse_isactive_check CHECK (isactive in ('Y','N'))
)
;

