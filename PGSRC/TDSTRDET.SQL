-- Table: t_distributionrundetail

-- DROP TABLE t_distributionrundetail;

CREATE TABLE t_distributionrundetail FOR SYSTEM NAME tdstrdet
(
  m_distributionrun_id           FOR COLUMN m_drid          DECIMAL(10,0) NOT NULL,
  m_distributionrunline_id       FOR COLUMN m_drlid         DECIMAL(10,0) NOT NULL,
  m_distributionlist_id          FOR COLUMN m_dstlid        DECIMAL(10,0) NOT NULL,
  m_distributionlistline_id      FOR COLUMN m_dllid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ratio                                                     DECFLOAT(16) NOT NULL,
  minqty                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_distributionrundetail_pkey PRIMARY KEY (m_distributionrun_id, m_distributionrunline_id,
                m_distributionlist_id, m_distributionlistline_id),
  CONSTRAINT t_distributionrundetail_isactive_check CHECK (isactive in ('Y','N'))
)
;

