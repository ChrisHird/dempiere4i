-- Table: m_distributionlistline

-- DROP TABLE m_distributionlistline;

CREATE TABLE m_distributionlistline FOR SYSTEM NAME mdstlstln
(
  m_distributionlistline_id      FOR COLUMN m_dllid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_distributionlist_id          FOR COLUMN m_dstlid        DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0) NOT NULL,
  minqty                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  ratio                                                     DECFLOAT(16),
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_distributionlistline_pkey PRIMARY KEY (m_distributionlistline_id),
  CONSTRAINT m_distributionlistline_isactive_check CHECK (isactive in ('Y','N'))
)
;

