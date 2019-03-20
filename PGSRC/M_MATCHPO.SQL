-- Table: m_matchpo

-- DROP TABLE m_matchpo;

CREATE TABLE m_matchpo
(
  m_matchpo_id                   FOR COLUMN m_mpoid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_orderline_id                 FOR COLUMN c_olid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0),
  datetr                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  processing                                                CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  documentno                                                VARCHAR(30),
  dateacct                                                  TIMESTAMP,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  pricematchdifference           FOR COLUMN pmtchdif        DECFLOAT(16),
  isapproved                                                CHAR(1) DEFAULT 'Y',
  description                    FOR COLUMN desc            VARCHAR(255),
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  CONSTRAINT m_matchpo_pkey PRIMARY KEY (m_matchpo_id),
  CONSTRAINT m_matchpo_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_matchpo_processed_check CHECK (processed in ('Y','N'))
)
;

