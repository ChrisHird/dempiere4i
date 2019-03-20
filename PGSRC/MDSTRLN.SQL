-- Table: m_distributionrunline

-- DROP TABLE m_distributionrunline;

CREATE TABLE m_distributionrunline FOR SYSTEM NAME mdstrln
(
  m_distributionrunline_id       FOR COLUMN m_drlid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_distributionrun_id           FOR COLUMN m_drid          DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_distributionlist_id          FOR COLUMN m_dstlid        DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  totalqty                                                  DECFLOAT(16) NOT NULL DEFAULT 0,
  minqty                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_distributionrunline_pkey PRIMARY KEY (m_distributionrunline_id),
  CONSTRAINT m_distributionrunline_isactive_check CHECK (isactive in ('Y','N'))
)
;

