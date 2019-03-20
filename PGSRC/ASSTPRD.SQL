-- Table: a_asset_product

-- DROP TABLE a_asset_product;

CREATE TABLE a_asset_product FOR SYSTEM NAME asstprd
(
  a_asset_product_id             FOR COLUMN a_aprdid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  a_qty_current                  FOR COLUMN a_qcur          DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_product_key PRIMARY KEY (a_asset_product_id),
  CONSTRAINT a_asset_product_isactive_check CHECK (isactive in ('Y','N'))
)
;

