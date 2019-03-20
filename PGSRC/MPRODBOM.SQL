-- Table: m_product_bom

-- DROP TABLE m_product_bom;

CREATE TABLE m_product_bom FOR SYSTEM NAME mprodbom
(
  m_product_bom_id               FOR COLUMN m_pbomid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_productbom_id                FOR COLUMN m_prdbomid      DECIMAL(10,0) NOT NULL,
  bomqty                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  bomtype                                                   CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_product_bom_pkey PRIMARY KEY (m_product_bom_id),
  CONSTRAINT m_product_bom_isactive_check CHECK (isactive in ('Y','N'))
)
;

