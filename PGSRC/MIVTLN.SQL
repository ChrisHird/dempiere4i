-- Table: m_inventoryline

-- DROP TABLE m_inventoryline;

CREATE TABLE m_inventoryline FOR SYSTEM NAME mivtln
(
  m_inventoryline_id             FOR COLUMN m_ilid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_inventory_id                 FOR COLUMN m_iid           DECIMAL(10,0) NOT NULL,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0),
  qtybook                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  qtycount                                                  DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) DEFAULT 0,
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  inventorytype                  FOR COLUMN ivttyp          CHAR(1) NOT NULL DEFAULT 'D',
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  qtyinternaluse                 FOR COLUMN qtyintuse       DECFLOAT(16),
  reversalline_id                FOR COLUMN revlnid         DECIMAL(10,0),
  qtycsv                                                    DECIMAL(10,0) NOT NULL DEFAULT 0,
  currentcostprice               FOR COLUMN curcstprc       DECFLOAT(16),
  firstcountqty                  FOR COLUMN fcntryqty       DECFLOAT(16),
  secondcountqty                 FOR COLUMN scndcqty        DECFLOAT(16),
  countentered                   FOR COLUMN cntentd         CHAR(1) DEFAULT 'N',
  pickedqty                                                 DECFLOAT(16) DEFAULT 0,
  coststandard                   FOR COLUMN cststd          DECFLOAT(16),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_projectphase_id              FOR COLUMN c_prjpid        DECIMAL(10,0),
  c_projecttask_id               FOR COLUMN c_prjtskid      DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  currentcostpricell             FOR COLUMN curcstpl        DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_inventoryline_pkey PRIMARY KEY (m_inventoryline_id),
  CONSTRAINT m_inventoryline_countentered_check CHECK (countentered in ('Y','N')),
  CONSTRAINT m_inventoryline_isactive_check CHECK (isactive in ('Y','N'))
)
;

