-- Table: i_inventory

-- DROP TABLE i_inventory;

CREATE TABLE i_inventory FOR SYSTEM NAME iivt
(
  i_inventory_id                 FOR COLUMN i_ivtid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) DEFAULT 'Y',
  created                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  i_isimported                   FOR COLUMN i_ii            CHAR(1) NOT NULL DEFAULT 'N',
  i_errormsg                                                VARCHAR(2000),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  upc                                                       VARCHAR(30),
  value                                                     VARCHAR(40),
  lot                                                       VARCHAR(20),
  serno                                                     VARCHAR(20),
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  warehousevalue                 FOR COLUMN whseval         VARCHAR(40),
  locatorvalue                   FOR COLUMN locval          VARCHAR(40),
  x                                                         VARCHAR(60),
  y                                                         VARCHAR(60),
  z                                                         VARCHAR(60),
  m_inventory_id                 FOR COLUMN m_iid           DECIMAL(10,0),
  m_inventoryline_id             FOR COLUMN m_ilid          DECIMAL(10,0),
  qtybook                                                   DECFLOAT(16) DEFAULT 0,
  qtycount                                                  DECFLOAT(16) DEFAULT 0,
  movementdate                   FOR COLUMN movdat          TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) DEFAULT 'N',
  currentcostprice               FOR COLUMN curcstprc       DECFLOAT(16),
  currentcostpricell             FOR COLUMN curcstpl        DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_inventory_pkey PRIMARY KEY (i_inventory_id),
  CONSTRAINT i_inventory_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT i_inventory_processed_check CHECK (processed in ('Y','N'))
)
;

