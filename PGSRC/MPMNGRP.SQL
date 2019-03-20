-- Table: m_promotiongroup

-- DROP TABLE m_promotiongroup;

CREATE TABLE m_promotiongroup FOR SYSTEM NAME mpmngrp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_promotiongroup_id            FOR COLUMN m_promgid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_promotiongroup_pkey PRIMARY KEY (m_promotiongroup_id),
  CONSTRAINT m_promotiongroup_isactive_check CHECK (isactive in ('Y','N'))
)
;

