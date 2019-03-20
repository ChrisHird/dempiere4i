-- Table: m_attributeinstance

-- DROP TABLE m_attributeinstance;

CREATE TABLE m_attributeinstance FOR SYSTEM NAME matrinst
(
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL DEFAULT 0,
  m_attribute_id                 FOR COLUMN m_aid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_attributevalue_id            FOR COLUMN m_avid          DECIMAL(10,0),
  value                                                     VARCHAR(40),
  valuenumber                    FOR COLUMN valnum          DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_attributeinstance_pkey PRIMARY KEY (m_attributesetinstance_id, m_attribute_id),
  CONSTRAINT m_attributeinstance_isactive_check CHECK (isactive in ('Y','N'))
)
;

