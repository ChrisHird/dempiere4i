-- Table: m_lot

-- DROP TABLE m_lot;

CREATE TABLE m_lot
(
  m_lot_id                                                  DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  help                                                      VARCHAR(2000),
  datefrom                                                  TIMESTAMP,
  dateto                                                    TIMESTAMP,
  m_lotctl_id                    FOR COLUMN m_lcid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_lot_pkey PRIMARY KEY (m_lot_id),
  CONSTRAINT m_lot_isactive_check CHECK (isactive in ('Y','N'))
)
;

