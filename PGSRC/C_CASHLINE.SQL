-- Table: c_cashline

-- DROP TABLE c_cashline;

CREATE TABLE c_cashline
(
  c_cashline_id                  FOR COLUMN c_clid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_cash_id                                                 DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  cashtype                                                  CHAR(1) NOT NULL,
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  amount                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16) DEFAULT 0,
  writeoffamt                    FOR COLUMN woamt           DECFLOAT(16) DEFAULT 0,
  isgenerated                    FOR COLUMN isgentd         CHAR(1) DEFAULT 'N',
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_cashline_pkey PRIMARY KEY (c_cashline_id),
  CONSTRAINT c_cashline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_cashline_isgenerated_check CHECK (isgenerated in ('Y','N'))
)
;

