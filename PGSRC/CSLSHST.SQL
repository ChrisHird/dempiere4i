-- Table: c_saleshistory

-- DROP TABLE c_saleshistory;

CREATE TABLE c_saleshistory FOR SYSTEM NAME cslshst
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_saleshistory_id              FOR COLUMN c_slshid        DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  qty                                                       DECFLOAT(16),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  m_product_class_id             FOR COLUMN m_prdclsid      DECIMAL(10,0),
  m_product_group_id             FOR COLUMN m_pgrpid        DECIMAL(10,0),
  m_product_classification_id    FOR COLUMN m_prdcfnid      DECIMAL(10,0),
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_projecttask_id               FOR COLUMN c_prjtskid      DECIMAL(10,0),
  c_projectphase_id              FOR COLUMN c_prjpid        DECIMAL(10,0),
  c_salesregion_id               FOR COLUMN c_srid          DECIMAL(10,0),
  totalinvamt                    FOR COLUMN totinvamt       DECFLOAT(16),
  totalinvcost                   FOR COLUMN totinvcst       DECFLOAT(16),
  totalinvqty                    FOR COLUMN totinvqty       DECFLOAT(16),
  priceinvoiced                  FOR COLUMN prcinv          DECFLOAT(16),
  costamt                                                   DECFLOAT(16),
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0),
  dateinvoiced                   FOR COLUMN datinv          TIMESTAMP,
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0),
  documentno                                                VARCHAR(30) DEFAULT NULL,
  processed                                                 CHAR(1) DEFAULT NULL,
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_saleshistory_key PRIMARY KEY (c_saleshistory_id),
  CONSTRAINT c_saleshistory_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_saleshistory_processed_check CHECK (processed in ('Y','N'))
)
;

