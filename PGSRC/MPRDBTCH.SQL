-- Table: m_productionbatch

-- DROP TABLE m_productionbatch;

CREATE TABLE m_productionbatch FOR SYSTEM NAME mprdbtch
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  documentno                                                VARCHAR(30) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  iscomplete                                                CHAR(1),
  iscreated                                                 CHAR(1) NOT NULL DEFAULT 'N',
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_productionbatch_id           FOR COLUMN m_pbtchid       DECIMAL(10,0) NOT NULL,
  movementdate                   FOR COLUMN movdat          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  processed                                                 CHAR(1) NOT NULL,
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  processing                                                CHAR(1),
  qtyordered                                                DECFLOAT(16) NOT NULL,
  targetqty                                                 DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  countorder                                                DECIMAL(10,0) NOT NULL,
  qtycompleted                   FOR COLUMN qtycmp          DECFLOAT(16) NOT NULL,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL DEFAULT 0,
  docaction                                                 CHAR(2) DEFAULT 'CO',
  docstatus                                                 VARCHAR(2) DEFAULT 'DR',
  qtyreserved                    FOR COLUMN qtyrsvd         DECFLOAT(16),
  iscreatemove                   FOR COLUMN iscrtmov        CHAR(1) DEFAULT 'N',
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  isautoproduction               FOR COLUMN isatopdn        CHAR(1) DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_productionbatch_key PRIMARY KEY (m_productionbatch_id),
  CONSTRAINT m_productionbatch_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_productionbatch_isautoproduction_check CHECK (isautoproduction in ('Y','N')),
  CONSTRAINT m_productionbatch_iscreatemove_check CHECK (iscreatemove in ('Y','N')),
  CONSTRAINT m_productionbatch_processed_check CHECK (processed in ('Y','N')),
  CONSTRAINT m_productionbatch_processing_check CHECK (processing in ('Y','N'))
)
;

