-- Table: m_movementconfirm

-- DROP TABLE m_movementconfirm;

CREATE TABLE m_movementconfirm FOR SYSTEM NAME mmovcfm
(
  m_movementconfirm_id           FOR COLUMN m_mcid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_movement_id                  FOR COLUMN m_mid           DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  approvalamt                    FOR COLUMN appamt          DECFLOAT(16) DEFAULT 0,
  docaction                                                 CHAR(2) NOT NULL,
  docstatus                                                 CHAR(2) NOT NULL,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  m_inventory_id                 FOR COLUMN m_iid           DECIMAL(10,0),
  documentno                                                VARCHAR(30) NOT NULL,
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  isreversal                                                CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_movementconfirm_pkey PRIMARY KEY (m_movementconfirm_id),
  CONSTRAINT m_movementconfirm_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_movementconfirm_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT m_movementconfirm_isreversal_check CHECK (isreversal in ('Y','N')),
  CONSTRAINT m_movementconfirm_processed_check CHECK (processed in ('Y','N'))
)
;

