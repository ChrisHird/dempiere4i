-- Table: s_timeexpense

-- DROP TABLE s_timeexpense;

CREATE TABLE s_timeexpense FOR SYSTEM NAME stimexp
(
  s_timeexpense_id               FOR COLUMN s_teid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  daterepor                                                 TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  docstatus                                                 CHAR(2) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  approvalamt                    FOR COLUMN appamt          DECFLOAT(16),
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT s_timeexpense_pkey PRIMARY KEY (s_timeexpense_id),
  CONSTRAINT s_timeexpense_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT s_timeexpense_processed_check CHECK (processed in ('Y','N'))
)
;

