-- Table: m_productprice

-- DROP TABLE m_productprice;

CREATE TABLE m_productprice FOR SYSTEM NAME mprodp
(
  m_pricelist_version_id         FOR COLUMN m_plvid         DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pricelist                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  pricestd                                                  DECFLOAT(16) NOT NULL DEFAULT 0,
  pricelimit                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_productprice_pkey PRIMARY KEY (m_pricelist_version_id, m_product_id),
  CONSTRAINT m_productprice_isactive_check CHECK (isactive in ('Y','N'))
)
;

