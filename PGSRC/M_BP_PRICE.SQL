-- Table: m_bp_price

-- DROP TABLE m_bp_price;

CREATE TABLE m_bp_price
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  breakvalue                                                DECFLOAT(16) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  comments                                                  VARCHAR(2000) DEFAULT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  discount                                                  DECFLOAT(16),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_bp_price_id                  FOR COLUMN m_bpprcid       DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pricelimit                                                DECFLOAT(16) NOT NULL,
  pricelist                                                 DECFLOAT(16) NOT NULL,
  priceoverridetype              FOR COLUMN portype         CHAR(1) DEFAULT NULL,
  pricestd                                                  DECFLOAT(16) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  isnetprice                                                CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_bp_price_key PRIMARY KEY (m_bp_price_id),
  CONSTRAINT m_bp_price_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_bp_price_isnetprice_check CHECK (isnetprice in ('Y','N'))
)
;

