-- Table: m_productpricevendorbreak

-- DROP TABLE m_productpricevendorbreak;

CREATE TABLE m_productpricevendorbreak FOR SYSTEM NAME mprdpvbrk
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  breakvalue                                                DECFLOAT(16) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_pricelist_version_id         FOR COLUMN m_plvid         DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pricelimit                                                DECFLOAT(16) NOT NULL,
  pricelist                                                 DECFLOAT(16) NOT NULL,
  pricestd                                                  DECFLOAT(16) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_productpricevendorbreak_id   FOR COLUMN m_ppevbid       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_productpricevendorbreak_pkey PRIMARY KEY (m_productpricevendorbreak_id),
  CONSTRAINT m_productpricevendorbreak_isactive_check CHECK (isactive in ('Y','N'))
)
;

