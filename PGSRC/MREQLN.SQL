-- Table: m_requisitionline

-- DROP TABLE m_requisitionline;

CREATE TABLE m_requisitionline FOR SYSTEM NAME mreqln
(
  m_requisitionline_id           FOR COLUMN m_rlid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  m_requisition_id               FOR COLUMN m_rid           DECIMAL(10,0) NOT NULL,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  priceactual                    FOR COLUMN prcact          DECFLOAT(16) NOT NULL DEFAULT 0,
  linenetamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  c_orderline_id                 FOR COLUMN c_olid          DECIMAL(10,0),
  m_attributesetinstance_id      FOR COLUMN m_asi           DECFLOAT(16),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_uom_id                                                  DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_projectphase_id              FOR COLUMN c_prjpid        DECIMAL(10,0),
  c_projecttask_id               FOR COLUMN c_prjtskid      DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_requisitionline_pkey PRIMARY KEY (m_requisitionline_id),
  CONSTRAINT m_requisitionline_isactive_check CHECK (isactive in ('Y','N'))
)
;

