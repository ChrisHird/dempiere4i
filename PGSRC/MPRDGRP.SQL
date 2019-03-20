-- Table: m_product_group

-- DROP TABLE m_product_group;

CREATE TABLE m_product_group FOR SYSTEM NAME mprdgrp
(
  m_product_group_id             FOR COLUMN m_pgrpid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isdefault                                                 CHAR(1) NOT NULL,
  m_product_group_parent_id      FOR COLUMN m_pgrppid       DECIMAL(10,0),
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(255) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_product_group_key PRIMARY KEY (m_product_group_id),
  CONSTRAINT m_product_group_value UNIQUE (ad_client_id, value),
  CONSTRAINT m_product_group_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_product_group_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

