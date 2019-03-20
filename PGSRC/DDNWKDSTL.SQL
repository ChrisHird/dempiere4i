-- Table: dd_networkdistributionline

-- DROP TABLE dd_networkdistributionline;

CREATE TABLE dd_networkdistributionline FOR SYSTEM NAME ddnwkdstl
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_networkdistributionline_id  FOR COLUMN dd_ndlid        DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  m_shipper_id                   FOR COLUMN m_sid           DECIMAL(10,0) NOT NULL,
  m_warehousesource_id           FOR COLUMN m_whid          DECIMAL(10,0) NOT NULL,
  percent                                                   DECFLOAT(16),
  transfertime                   FOR COLUMN trnstim         DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validto                                                   TIMESTAMP,
  priorityno                                                DECIMAL(10,0),
  dd_networkdistribution_id      FOR COLUMN dd_ndid         DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_networkdistributionline_pkey PRIMARY KEY (dd_networkdistributionline_id),
  CONSTRAINT dd_networkdistributionline_isactive_check CHECK (isactive in ('Y','N'))
)
;

