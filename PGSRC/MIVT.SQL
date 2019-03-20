-- Table: m_inventory

-- DROP TABLE m_inventory;

CREATE TABLE m_inventory FOR SYSTEM NAME mivt
(
  m_inventory_id                 FOR COLUMN m_iid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  movementdate                   FOR COLUMN movdat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  updateqty                                                 CHAR(1) DEFAULT 'N',
  generatelist                   FOR COLUMN genlst          CHAR(1) DEFAULT 'Y',
  m_perpetualinv_id              FOR COLUMN m_piid          DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  docstatus                                                 CHAR(2) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  approvalamt                    FOR COLUMN appamt          DECFLOAT(16),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  isstocktake                    FOR COLUMN isstktke        CHAR(1) DEFAULT 'N',
  updateqtycount                 FOR COLUMN updqtycnt       CHAR(1) DEFAULT NULL,
  barcodescanner                 FOR COLUMN bcdescn         CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_inventory_pkey PRIMARY KEY (m_inventory_id),
  CONSTRAINT m_inventory_generatelist_check CHECK (generatelist in ('Y','N')),
  CONSTRAINT m_inventory_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_inventory_isstocktake_check CHECK (isstocktake in ('Y','N')),
  CONSTRAINT m_inventory_processed_check CHECK (processed in ('Y','N')),
  CONSTRAINT m_inventory_updateqty_check CHECK (updateqty in ('Y','N'))
)
;

