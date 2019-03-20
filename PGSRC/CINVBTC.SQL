-- Table: c_invoicebatch

-- DROP TABLE c_invoicebatch;

CREATE TABLE c_invoicebatch FOR SYSTEM NAME cinvbtc
(
  c_invoicebatch_id              FOR COLUMN c_ibid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  datedoc                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'N',
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0),
  controlamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  documentamt                    FOR COLUMN docamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  copyfrom                                                  CHAR(1) DEFAULT NULL,
  CONSTRAINT c_invoicebatch_pkey PRIMARY KEY (c_invoicebatch_id),
  CONSTRAINT c_invoicebatch_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_invoicebatch_issotrx_check CHECK (issotrx in ('Y','N')),
  CONSTRAINT c_invoicebatch_processed_check CHECK (processed in ('Y','N'))
)
;

