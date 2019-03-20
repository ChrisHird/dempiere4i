-- Table: m_transaction

-- DROP TABLE m_transaction;

CREATE TABLE m_transaction FOR SYSTEM NAME mtrn
(
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
  movementdate                   FOR COLUMN movdat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  m_inventoryline_id             FOR COLUMN m_ilid          DECIMAL(10,0),
  m_movementline_id              FOR COLUMN m_mlid          DECIMAL(10,0),
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  m_productionline_id            FOR COLUMN m_pdnlid        DECIMAL(10,0),
  c_projectissue_id              FOR COLUMN c_piid          DECIMAL(10,0),
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL DEFAULT 0,
  pp_cost_collector_id           FOR COLUMN pp_cstclid     DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_transaction_pkey PRIMARY KEY (m_transaction_id),
  CONSTRAINT m_transaction_isactive_check CHECK (isactive in ('Y','N'))
)
;

