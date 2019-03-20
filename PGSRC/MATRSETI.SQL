-- Table: m_attributesetinstance

-- DROP TABLE m_attributesetinstance;

CREATE TABLE m_attributesetinstance FOR SYSTEM NAME matrseti
(
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_attributeset_id              FOR COLUMN m_atsid         DECIMAL(10,0),
  serno                                                     VARCHAR(40),
  lot                                                       VARCHAR(40),
  guaranteedate                  FOR COLUMN gdate           TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_lot_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_attributesetinstance_pkey PRIMARY KEY (m_attributesetinstance_id),
  CONSTRAINT m_attributesetinstance_isactive_check CHECK (isactive in ('Y','N'))
)
;

