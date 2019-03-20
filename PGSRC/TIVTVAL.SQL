-- Table: t_inventoryvalue

-- DROP TABLE t_inventoryvalue;

CREATE TABLE t_inventoryvalue FOR SYSTEM NAME tivtval
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  m_pricelist_version_id         FOR COLUMN m_plvid         DECIMAL(10,0),
  datevalue                                                 TIMESTAMP,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  qtyonhand                                                 DECFLOAT(16) DEFAULT 0,
  pricepo                                                   DECFLOAT(16) DEFAULT 0,
  pricelist                                                 DECFLOAT(16) DEFAULT 0,
  pricestd                                                  DECFLOAT(16) DEFAULT 0,
  pricelimit                                                DECFLOAT(16) DEFAULT 0,
  coststandard                   FOR COLUMN cststd          DECFLOAT(16) DEFAULT 0,
  cost                                                      DECFLOAT(16) DEFAULT 0,
  pricepoamt                                                DECFLOAT(16) DEFAULT 0,
  pricelistamt                   FOR COLUMN prclstamt       DECFLOAT(16) DEFAULT 0,
  pricestdamt                    FOR COLUMN prcstdamt       DECFLOAT(16) DEFAULT 0,
  pricelimitamt                  FOR COLUMN prclmtamt       DECFLOAT(16) DEFAULT 0,
  coststandardamt                FOR COLUMN cststdamt       DECFLOAT(16) DEFAULT 0,
  costamt                                                   DECFLOAT(16) DEFAULT 0,
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0) NOT NULL,
  m_costtype_id                  FOR COLUMN m_ctid          DECIMAL(10,0) NOT NULL,
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  classification                 FOR COLUMN clsfn           VARCHAR(12) DEFAULT NULL,
  group1                                                    VARCHAR(255) DEFAULT NULL,
  group2                                                    VARCHAR(255) DEFAULT NULL,
  costamtll                                                 DECFLOAT(16),
  cumulatedamt                   FOR COLUMN cumdteamt       DECFLOAT(16),
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_inventoryvalue_pkey PRIMARY KEY (ad_pinstance_id, m_warehouse_id, m_product_id,
  m_attributesetinstance_id, m_costtype_id, m_costelement_id)
)
  ;
