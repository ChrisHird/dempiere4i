-- Table: c_bankstatementline

-- DROP TABLE c_bankstatementline;

CREATE TABLE c_bankstatementline FOR SYSTEM NAME cbstmtln
(
  c_bankstatementline_id         FOR COLUMN c_bslnid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bankstatement_id             FOR COLUMN c_bsid          DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isreversal                                                CHAR(1) NOT NULL DEFAULT 'N',
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  valutadate                                                 TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateacct                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  trxamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  stmtamt                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  chargeamt                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  interestamt                    FOR COLUMN intamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  memo                                                      VARCHAR(255),
  referenceno                    FOR COLUMN refnum          VARCHAR(40),
  ismanual                                                  CHAR(1) NOT NULL DEFAULT 'N',
  efttrxid                                                  VARCHAR(40),
  efttrxtype                                                VARCHAR(20),
  eftmemo                                                   VARCHAR(2000),
  eftpayee                                                  VARCHAR(255),
  eftpayeeaccount                FOR COLUMN eftpact         VARCHAR(40),
  createpayment                  FOR COLUMN crtpmt          CHAR(1),
  statementlinedate              FOR COLUMN stmlndat         TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  eftstatementlinedate           FOR COLUMN eftsld          TIMESTAMP,
  eftvalutadate                  FOR COLUMN eftvdat         TIMESTAMP,
  eftreference                   FOR COLUMN eftref          VARCHAR(60),
  eftcurrency                    FOR COLUMN eftcur          VARCHAR(20),
  eftamt                                                    DECFLOAT(16) DEFAULT 0,
  eftcheckno                                                VARCHAR(20),
  matchstatement                 FOR COLUMN mchstm          CHAR(1),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bankstatementline_pkey PRIMARY KEY (c_bankstatementline_id),
  CONSTRAINT c_bankstatementline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bankstatementline_isreversal_check CHECK (isreversal in ('Y','N'))
)
;

