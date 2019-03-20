-- Table: m_demanddetail

-- DROP TABLE m_demanddetail;

CREATE TABLE m_demanddetail FOR SYSTEM NAME mdmddet
(
  m_demanddetail_id              FOR COLUMN m_ddid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_demandline_id                FOR COLUMN m_dlid          DECIMAL(10,0) NOT NULL,
  m_forecastline_id              FOR COLUMN m_flid          DECIMAL(10,0),
  m_requisitionline_id           FOR COLUMN m_rlid          DECIMAL(10,0),
  c_orderline_id                 FOR COLUMN c_olid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_demanddetail_pkey PRIMARY KEY (m_demanddetail_id),
  CONSTRAINT m_demanddetail_isactive_check CHECK (isactive in ('Y','N'))
)
;

