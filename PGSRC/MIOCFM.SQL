-- Table: m_inoutconfirm

-- DROP TABLE m_inoutconfirm;

CREATE TABLE m_inoutconfirm FOR SYSTEM NAME miocfm
(
  m_inoutconfirm_id              FOR COLUMN m_iocid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  m_inout_id                                                DECIMAL(10,0) NOT NULL,
  confirmtype                    FOR COLUMN cfmtyp          CHAR(2) NOT NULL,
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(255),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  createpackage                  FOR COLUMN crtpkg          CHAR(1),
  iscancelled                    FOR COLUMN iscanc          CHAR(1) NOT NULL DEFAULT 'N',
  docstatus                                                 CHAR(2) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  isindispute                    FOR COLUMN isdispute       CHAR(1) NOT NULL DEFAULT 'N',
  m_inventory_id                 FOR COLUMN m_iid           DECIMAL(10,0),
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  approvalamt                    FOR COLUMN appamt          DECFLOAT(16),
  confirmationno                 FOR COLUMN cfmnum          VARCHAR(20),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_inoutconfirm_pkey PRIMARY KEY (m_inoutconfirm_id),
  CONSTRAINT m_inoutconfirm_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_inoutconfirm_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT m_inoutconfirm_processed_check CHECK (processed in ('Y','N'))
)
;

