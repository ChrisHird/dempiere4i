-- Table: m_movementlineconfirm

-- DROP TABLE m_movementlineconfirm;

CREATE TABLE m_movementlineconfirm FOR SYSTEM NAME mmovlncfm
(
  m_movementlineconfirm_id       FOR COLUMN m_mlcid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_movementconfirm_id           FOR COLUMN m_mcid          DECIMAL(10,0) NOT NULL,
  m_movementline_id              FOR COLUMN m_mlid          DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  targetqty                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  confirmedqty                   FOR COLUMN cfmqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  differenceqty                  FOR COLUMN difqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  scrappedqty                    FOR COLUMN scrqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  m_inventoryline_id             FOR COLUMN m_ilid          DECIMAL(10,0),
  reversalline_id                FOR COLUMN revlnid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_movementlineconfirm_pkey PRIMARY KEY (m_movementlineconfirm_id),
  CONSTRAINT m_movementlineconfirm_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_movementlineconfirm_processed_check CHECK (processed in ('Y','N'))
)
;

