-- Table: m_costqueue

-- DROP TABLE m_costqueue;

CREATE TABLE m_costqueue FOR SYSTEM NAME mcstq
(
  m_costqueue_id                 FOR COLUMN m_cqid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_costtype_id                  FOR COLUMN m_ctid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0) NOT NULL,
  currentcostprice               FOR COLUMN curcstprc       DECFLOAT(16) NOT NULL DEFAULT 0,
  currentqty                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  dateacct                                                  TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_costqueue_pkey PRIMARY KEY (m_costqueue_id),
  CONSTRAINT m_costqueue_isactive_check CHECK (isactive in ('Y','N'))
)
;

