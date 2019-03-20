-- Table: m_rma

-- DROP TABLE m_rma;

CREATE TABLE m_rma
(
  m_rma_id                                                  DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  inout_id                                                  DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_order_id                                                DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  docstatus                                                 CHAR(2) NOT NULL,
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  amt                                                       DECFLOAT(16),
  m_rmatype_id                   FOR COLUMN m_rmatid        DECIMAL(10,0),
  help                                                      VARCHAR(2000),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  generateto                                                CHAR(1),
  ref_rma_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_rma_pkey PRIMARY KEY (m_rma_id),
  CONSTRAINT m_rma_issotrx_check CHECK (issotrx in ('Y','N'))
)
;

