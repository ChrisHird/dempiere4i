-- Table: t_replenish

-- DROP TABLE t_replenish;

CREATE TABLE t_replenish FOR SYSTEM NAME trpl
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  qtyonhand                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  qtyreserved                    FOR COLUMN qtyrsvd         DECFLOAT(16) NOT NULL DEFAULT 0,
  qtyordered                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  replenishtype                  FOR COLUMN rplntyp         CHAR(1) NOT NULL,
  level_min                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  level_max                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  order_min                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  order_pack                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  qtytoorder                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  replenishmentcreate            FOR COLUMN rplncrt         character(3),
  m_warehousesource_id           FOR COLUMN m_whid          DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  updated                                                   TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_replenish_pkey PRIMARY KEY (ad_pinstance_id, m_warehouse_id, m_product_id)
)
  ;
