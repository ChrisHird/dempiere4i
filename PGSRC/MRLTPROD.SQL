-- Table: m_relatedproduct

-- DROP TABLE m_relatedproduct;

CREATE TABLE m_relatedproduct FOR SYSTEM NAME mrltprod
(
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  relatedproduct_id              FOR COLUMN rltprdid        DECIMAL(10,0) NOT NULL,
  relatedproducttype             FOR COLUMN rltprdtyp       CHAR(1) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_relatedproduct_pkey PRIMARY KEY (m_product_id, relatedproduct_id, relatedproducttype),
  CONSTRAINT m_relatedproduct_isactive_check CHECK (isactive in ('Y','N'))
)
;

