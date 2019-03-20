-- Table: m_productionline

-- DROP TABLE m_productionline;

CREATE TABLE m_productionline FOR SYSTEM NAME mpdnln
(
  m_productionline_id            FOR COLUMN m_pdnlid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_productionplan_id            FOR COLUMN m_pdnpid        DECIMAL(10,0),
  line                                                      DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) DEFAULT 0,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  m_production_id                FOR COLUMN m_pdnid         DECIMAL(10,0) NOT NULL,
  plannedqty                                                DECFLOAT(16),
  qtyused                                                   DECFLOAT(16),
  isendproduct                   FOR COLUMN isendprd        CHAR(1) DEFAULT NULL,
  pickedqty                                                 DECFLOAT(16) DEFAULT 0,
  qtyreserved                    FOR COLUMN qtyrsvd         DECFLOAT(16),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_projectphase_id              FOR COLUMN c_prjpid        DECIMAL(10,0),
  c_projecttask_id               FOR COLUMN c_prjtskid      DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  reversalline_id                FOR COLUMN revlnid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_productionline_pkey PRIMARY KEY (m_productionline_id),
  CONSTRAINT m_productionline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_productionline_isendproduct_check CHECK (isendproduct in ('Y','N'))
)
;

