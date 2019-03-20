-- Table: m_transactionallocation

-- DROP TABLE m_transactionallocation;

CREATE TABLE m_transactionallocation FOR SYSTEM NAME mtrnalc
(
  m_transaction_id               FOR COLUMN m_tid           DECIMAL(10,0) NOT NULL,
  allocationstrategytype         FOR COLUMN alcstytyp       CHAR(1) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL DEFAULT 0,
  isallocated                    FOR COLUMN isalloc         CHAR(1) NOT NULL DEFAULT 'N',
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  ismanual                                                  CHAR(1) NOT NULL DEFAULT 'N',
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  m_productionline_id            FOR COLUMN m_pdnlid        DECIMAL(10,0),
  m_inventoryline_id             FOR COLUMN m_ilid          DECIMAL(10,0),
  out_m_transaction_id           FOR COLUMN omtrnid         DECIMAL(10,0),
  out_m_inoutline_id             FOR COLUMN omiolid         DECIMAL(10,0),
  out_m_productionline_id        FOR COLUMN omplid          DECIMAL(10,0),
  out_m_inventoryline_id         FOR COLUMN omilid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_transactionallocation_pkey PRIMARY KEY (m_transaction_id, allocationstrategytype),
  CONSTRAINT m_transactionallocation_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_transactionallocation_isallocated_check CHECK (isallocated in ('Y','N')),
  CONSTRAINT m_transactionallocation_ismanual_check CHECK (ismanual in ('Y','N'))
)
;

