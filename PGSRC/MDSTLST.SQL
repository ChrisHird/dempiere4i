-- Table: m_distributionlist

-- DROP TABLE m_distributionlist;

CREATE TABLE m_distributionlist FOR SYSTEM NAME mdstlst
(
  m_distributionlist_id          FOR COLUMN m_dstlid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  ratiototal                                                DECFLOAT(16),
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_distributionlist_pkey PRIMARY KEY (m_distributionlist_id),
  CONSTRAINT m_distributionlist_isactive_check CHECK (isactive in ('Y','N'))
)
;

