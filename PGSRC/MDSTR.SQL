-- Table: m_distributionrun

-- DROP TABLE m_distributionrun;

CREATE TABLE m_distributionrun FOR SYSTEM NAME mdstr
(
  m_distributionrun_id           FOR COLUMN m_drid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  iscreatesingleorder            FOR COLUMN iscrtsord       CHAR(1) NOT NULL DEFAULT 'N',
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0),
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_distributionrun_pkey PRIMARY KEY (m_distributionrun_id),
  CONSTRAINT m_distributionrun_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_distributionrun_iscreatesingleorder_check CHECK (iscreatesingleorder in ('Y','N'))
)
;

