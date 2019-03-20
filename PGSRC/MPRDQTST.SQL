-- Table: m_product_qualitytest

-- DROP TABLE m_product_qualitytest;

CREATE TABLE m_product_qualitytest FOR SYSTEM NAME mprdqtst
(
  m_product_qualitytest_id       FOR COLUMN m_pqtid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_qualitytest_id               FOR COLUMN m_qtstid        DECIMAL(10,0) NOT NULL,
  expectedresult                 FOR COLUMN expresult       VARCHAR(255) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_product_qualitytest_key PRIMARY KEY (m_product_qualitytest_id),
  CONSTRAINT m_product_qualitytest_isactive_check CHECK (isactive in ('Y','N'))
)
;

