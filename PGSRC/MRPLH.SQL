-- Table: m_replenish

-- DROP TABLE m_replenish;

CREATE TABLE m_replenish FOR SYSTEM NAME mrplh
(
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  replenishtype                  FOR COLUMN rplntyp         CHAR(1) NOT NULL,
  level_min                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  level_max                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  m_warehousesource_id           FOR COLUMN m_whid          DECIMAL(10,0),
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0),
  qtybatchsize                   FOR COLUMN qtybs           DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_replenish_pkey PRIMARY KEY (m_product_id, m_warehouse_id),
  CONSTRAINT m_replenish_isactive_check CHECK (isactive in ('Y','N'))
)
;

