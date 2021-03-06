-- Table: pp_cost_collector

-- DROP TABLE pp_cost_collector;

CREATE TABLE pp_cost_collector FOR SYSTEM NAME ppcstcol
(
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_doctypetarget_id             FOR COLUMN c_dttid         DECIMAL(10,0) NOT NULL,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_uom_id                                                  DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dateacc                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  docaction                                                 CHAR(2) DEFAULT 'CO',
  docstatus                                                 CHAR(2) DEFAULT 'DR',
  durationreal                   FOR COLUMN durreal         DECFLOAT(16),
  isactive                                                  CHAR(1) NOT NULL,
  isbatchtime                    FOR COLUMN isbtctim        CHAR(1) DEFAULT 'N',
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  movementdate                   FOR COLUMN movdat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  pp_cost_collector_id           FOR COLUMN pp_cstclid     DECIMAL(10,0) NOT NULL,
  pp_order_bomline_id            FOR COLUMN pp_obomlid      DECIMAL(10,0),
  pp_order_id                    FOR COLUMN pp_ordid        DECIMAL(10,0) NOT NULL,
  pp_order_node_id               FOR COLUMN pp_onodid       DECIMAL(10,0),
  pp_order_workflow_id           FOR COLUMN pp_owfid        DECIMAL(10,0),
  posted                                                    CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL,
  processing                                                CHAR(1),
  qtyreject                                                 DECFLOAT(16) DEFAULT 0,
  s_resource_id                  FOR COLUMN s_rid           DECIMAL(10,0) NOT NULL,
  scrappedqty                    FOR COLUMN scrqty          DECFLOAT(16) DEFAULT 0,
  setuptimereal                  FOR COLUMN sutimreal       DECFLOAT(16) DEFAULT 0,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  user1_id                                                  DECIMAL(10,0),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  user2_id                                                  DECIMAL(10,0),
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  costcollectortype              FOR COLUMN cstcoltyp       VARCHAR(3) NOT NULL,
  issubcontracting               FOR COLUMN issubcont       CHAR(1),
  documentno                                                VARCHAR(30) NOT NULL,
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_cost_collector_pkey PRIMARY KEY (pp_cost_collector_id),
  CONSTRAINT pp_cost_collector_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_cost_collector_isbatchtime_check CHECK (isbatchtime in ('Y','N')),
  CONSTRAINT pp_cost_collector_issubcontracting_check CHECK (issubcontracting in ('Y','N')),
  CONSTRAINT pp_cost_collector_processed_check CHECK (processed in ('Y','N'))
)
;

