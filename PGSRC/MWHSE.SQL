-- Table: m_warehouse

-- DROP TABLE m_warehouse;

CREATE TABLE m_warehouse FOR SYSTEM NAME mwhse
(
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0) NOT NULL,
  separator                                                 CHAR(1) NOT NULL,
  m_warehousesource_id           FOR COLUMN m_whid          DECIMAL(10,0),
  replenishmentclass             FOR COLUMN rplncls         VARCHAR(60),
  isintransit                    FOR COLUMN isintrans       CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_warehouse_pkey PRIMARY KEY (m_warehouse_id),
  CONSTRAINT m_warehouse_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_warehouse_isintransit_check CHECK (isintransit in ('Y','N'))
)
;

