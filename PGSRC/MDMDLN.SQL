-- Table: m_demandline

-- DROP TABLE m_demandline;

CREATE TABLE m_demandline FOR SYSTEM NAME mdmdln
(
  m_demandline_id                FOR COLUMN m_dlid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_demand_id                    FOR COLUMN m_did           DECIMAL(10,0) NOT NULL,
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0) NOT NULL,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  qtycalculated                  FOR COLUMN qtycalc         DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_demandline_pkey PRIMARY KEY (m_demandline_id),
  CONSTRAINT m_demandline_isactive_check CHECK (isactive in ('Y','N'))
)
;

