-- Table: test

-- DROP TABLE test;

CREATE TABLE test
(
  test_id                                                   DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  t_integer                                                 DECIMAL(10,0),
  t_number                                                  DECFLOAT(16) DEFAULT 0,
  t_date                                                    TIMESTAMP,
  t_datetime                                                TIMESTAMP,
  c_uom_id                                                  DECIMAL(10,0),
  t_qty                                                     DECFLOAT(16) DEFAULT 0,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  t_amount                                                  DECFLOAT(16) DEFAULT 0,
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0),
  account_acct                   FOR COLUMN actact          DECIMAL(10,0),
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0),
  processing                                                CHAR(1),
  binarydata                                                BLOB,
  processed                                                 CHAR(1) DEFAULT 'N',
  characterdata                  FOR COLUMN chrdta          CLOB,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT test_pkey PRIMARY KEY (test_id),
  CONSTRAINT test_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT test_processed_check CHECK (processed in ('Y','N'))
)
;

