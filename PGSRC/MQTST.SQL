-- Table: m_qualitytest

-- DROP TABLE m_qualitytest;

CREATE TABLE m_qualitytest FOR SYSTEM NAME mqtst
(
  m_qualitytest_id               FOR COLUMN m_qtstid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_qualitytest_key PRIMARY KEY (m_qualitytest_id),
  CONSTRAINT m_qualitytest_isactive_check CHECK (isactive in ('Y','N'))
)
;

