-- Table: m_lotctl

-- DROP TABLE m_lotctl;

CREATE TABLE m_lotctl
(
  m_lotctl_id                    FOR COLUMN m_lcid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  startno                                                   DECIMAL(10,0) NOT NULL,
  incrementno                    FOR COLUMN incnum          DECIMAL(10,0) NOT NULL,
  currentnext                    FOR COLUMN curnxt          DECIMAL(10,0) NOT NULL,
  prefix                                                    VARCHAR(10),
  suffix                                                    VARCHAR(10),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_lotctl_pkey PRIMARY KEY (m_lotctl_id),
  CONSTRAINT m_lotctl_isactive_check CHECK (isactive in ('Y','N'))
)
;

