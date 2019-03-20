-- Table: m_inoutlineconfirm

-- DROP TABLE m_inoutlineconfirm;

CREATE TABLE m_inoutlineconfirm FOR SYSTEM NAME miolncfm
(
  m_inoutlineconfirm_id          FOR COLUMN m_iolcid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_inoutconfirm_id              FOR COLUMN m_iocid         DECIMAL(10,0) NOT NULL,
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0) NOT NULL,
  targetqty                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  confirmedqty                   FOR COLUMN cfmqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  differenceqty                  FOR COLUMN difqty          DECFLOAT(16),
  scrappedqty                    FOR COLUMN scrqty          DECFLOAT(16),
  m_inventoryline_id             FOR COLUMN m_ilid          DECIMAL(10,0),
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0),
  confirmationno                 FOR COLUMN cfmnum          VARCHAR(20),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_inoutlineconfirm_pkey PRIMARY KEY (m_inoutlineconfirm_id),
  CONSTRAINT m_inoutlineconfirm_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_inoutlineconfirm_processed_check CHECK (processed in ('Y','N'))
)
;

