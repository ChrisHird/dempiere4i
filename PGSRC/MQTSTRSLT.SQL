-- Table: m_qualitytestresult

-- DROP TABLE m_qualitytestresult;

CREATE TABLE m_qualitytestresult FOR SYSTEM NAME mqtstrslt
(
  m_qualitytestresult_id         FOR COLUMN m_qrtid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  m_qualitytest_id               FOR COLUMN m_qtstid        DECIMAL(10,0) NOT NULL,
  isqcpass                                                  CHAR(1) NOT NULL DEFAULT 'N',
  result                                                    VARCHAR(255) DEFAULT NULL,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_qualitytestresult_key PRIMARY KEY (m_qualitytestresult_id),
  CONSTRAINT m_qualitytestresult_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_qualitytestresult_isqcpass_check CHECK (isqcpass in ('Y','N')),
  CONSTRAINT m_qualitytestresult_processed_check CHECK (processed in ('Y','N'))
)
;

