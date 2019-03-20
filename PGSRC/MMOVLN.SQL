-- Table: m_movementline

-- DROP TABLE m_movementline;

CREATE TABLE m_movementline FOR SYSTEM NAME mmovln
(
  m_movementline_id              FOR COLUMN m_mlid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_movement_id                  FOR COLUMN m_mid           DECIMAL(10,0) NOT NULL,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  m_locatorto_id                 FOR COLUMN m_ltid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0),
  movementqty                    FOR COLUMN movqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  confirmedqty                   FOR COLUMN cfmqty          DECFLOAT(16) DEFAULT 0,
  scrappedqty                    FOR COLUMN scrqty          DECFLOAT(16) DEFAULT 0,
  targetqty                                                 DECFLOAT(16) DEFAULT 0,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  m_attributesetinstanceto_id    FOR COLUMN m_atritoid      DECIMAL(10,0),
  dd_orderline_id                FOR COLUMN dd_ordlid       DECIMAL(10,0),
  reversalline_id                FOR COLUMN revlnid         DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_projectphase_id              FOR COLUMN c_prjpid        DECIMAL(10,0),
  c_projecttask_id               FOR COLUMN c_prjtskid      DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_movementline_pkey PRIMARY KEY (m_movementline_id),
  CONSTRAINT m_movementline_isactive_check CHECK (isactive in ('Y','N'))
)
;

