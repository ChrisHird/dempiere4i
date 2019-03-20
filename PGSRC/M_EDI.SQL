-- Table: m_edi

-- DROP TABLE m_edi;

CREATE TABLE m_edi
(
  m_edi_id                                                  DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bp_edi_id                    FOR COLUMN c_bpediid       DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  trxtype                                                   CHAR(1) NOT NULL,
  edistatus                                                 CHAR(1) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  request_qty                    FOR COLUMN reqqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  request_shipdate               FOR COLUMN reqshpdat       TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  request_price                  FOR COLUMN reqprc          DECFLOAT(16) DEFAULT 0,
  trxsen                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  trxreceived                    FOR COLUMN trcvd           TIMESTAMP,
  reply_received                 FOR COLUMN rpyrcvd         TIMESTAMP,
  reply_qtyconfirmed             FOR COLUMN rpyqtycfm       DECFLOAT(16) DEFAULT 0,
  reply_qtyavailable             FOR COLUMN rpyqtyavl       DECFLOAT(16) DEFAULT 0,
  reply_shipdate                 FOR COLUMN rpyshpdat       TIMESTAMP,
  reply_price                    FOR COLUMN rpyprc          DECFLOAT(16) DEFAULT 0,
  reply_remarks                  FOR COLUMN rpyrmk          VARCHAR(2000),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  CONSTRAINT m_edi_pkey PRIMARY KEY (m_edi_id),
  CONSTRAINT m_edi_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_edi_processed_check CHECK (processed in ('Y','N'))
)
;

