-- Table: m_requisition

-- DROP TABLE m_requisition;

CREATE TABLE m_requisition FOR SYSTEM NAME mreq
(
  m_requisition_id               FOR COLUMN m_rid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'Y',
  priorityrule                   FOR COLUMN ptyrule         CHAR(1) NOT NULL,
  daterequired                   FOR COLUMN datreqd         TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  totallines                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  docaction                                                 CHAR(2) NOT NULL,
  docstatus                                                 CHAR(2) NOT NULL,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  datedoc                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_requisition_pkey PRIMARY KEY (m_requisition_id),
  CONSTRAINT m_requisition_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_requisition_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT m_requisition_processed_check CHECK (processed in ('Y','N'))
)
;

