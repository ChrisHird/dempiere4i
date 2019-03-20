-- Table: m_sernoctl

-- DROP TABLE m_sernoctl;

CREATE TABLE m_sernoctl
(
  m_sernoctl_id                  FOR COLUMN m_sncid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  startno                                                   DECIMAL(10,0) NOT NULL,
  incrementno                    FOR COLUMN incnum          DECIMAL(10,0) NOT NULL,
  currentnext                    FOR COLUMN curnxt          DECIMAL(10,0) NOT NULL,
  prefix                                                    VARCHAR(10),
  suffix                                                    VARCHAR(10),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_sernoctl_pkey PRIMARY KEY (m_sernoctl_id),
  CONSTRAINT m_sernoctl_isactive_check CHECK (isactive in ('Y','N'))
)
;

