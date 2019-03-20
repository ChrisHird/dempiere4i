-- Table: m_promotion

-- DROP TABLE m_promotion;

CREATE TABLE m_promotion FOR SYSTEM NAME mpmn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_promotion_id                 FOR COLUMN m_promid        DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  promotionpriority              FOR COLUMN prompty         DECIMAL(10,0) NOT NULL DEFAULT 0,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_promotion_pkey PRIMARY KEY (m_promotion_id),
  CONSTRAINT m_promotion_isactive_check CHECK (isactive in ('Y','N'))
)
;

