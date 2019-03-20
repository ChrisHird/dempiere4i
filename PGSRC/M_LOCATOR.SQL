-- Table: m_locator

-- DROP TABLE m_locator;

CREATE TABLE m_locator
(
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  priorityno                                                DECIMAL(10,0) NOT NULL,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  x                                                         VARCHAR(60),
  y                                                         VARCHAR(60),
  z                                                         VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_locator_pkey PRIMARY KEY (m_locator_id),
  CONSTRAINT m_locator_isactive_check CHECK (isactive in ('Y','N'))
)
;

