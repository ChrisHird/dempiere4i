-- Table: t_transaction

-- DROP TABLE t_transaction;

CREATE TABLE t_transaction FOR SYSTEM NAME ttrans
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  m_transaction_id               FOR COLUMN m_tid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  movementtype                   FOR COLUMN movtyp          CHAR(2) NOT NULL,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  movementdate                   FOR COLUMN movdat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  m_inout_id                                                DECIMAL(10,0),
  m_movementline_id              FOR COLUMN m_mlid          DECIMAL(10,0),
  m_movement_id                  FOR COLUMN m_mid           DECIMAL(10,0),
  m_inventoryline_id             FOR COLUMN m_ilid          DECIMAL(10,0),
  m_inventory_id                 FOR COLUMN m_iid           DECIMAL(10,0),
  m_productionline_id            FOR COLUMN m_pdnlid        DECIMAL(10,0),
  m_production_id                FOR COLUMN m_pdnid         DECIMAL(10,0),
  c_projectissue_id              FOR COLUMN c_piid          DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  search_order_id                FOR COLUMN srchordid       DECIMAL(10,0),
  search_invoice_id              FOR COLUMN srchinvid       DECIMAL(10,0),
  search_inout_id                FOR COLUMN srchioid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_transaction_pkey PRIMARY KEY (ad_pinstance_id, m_transaction_id),
  CONSTRAINT t_transaction_isactive_check CHECK (isactive in ('Y','N'))
)
;

