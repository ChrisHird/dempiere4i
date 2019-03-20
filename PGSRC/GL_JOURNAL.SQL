-- Table: gl_journal

-- DROP TABLE gl_journal;

CREATE TABLE gl_journal
(
  gl_journal_id                  FOR COLUMN gl_jid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  docstatus                                                 CHAR(2) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  isprinted                                                 CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  postingtype                    FOR COLUMN posttyp         CHAR(1) NOT NULL,
  gl_budget_id                   FOR COLUMN gl_bid          DECIMAL(10,0),
  gl_category_id                 FOR COLUMN gl_cid          DECIMAL(10,0) NOT NULL,
  datedo                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateacc                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  currencyrate                   FOR COLUMN currte          DECFLOAT(16) NOT NULL DEFAULT 0,
  gl_journalbatch_id             FOR COLUMN gl_jbid         DECIMAL(10,0),
  totaldr                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  totalcr                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  controlamt                                                DECFLOAT(16) DEFAULT 0,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) DEFAULT 'N',
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0) NOT NULL,
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT gl_journal_pkey PRIMARY KEY (gl_journal_id),
  CONSTRAINT gl_journal_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT gl_journal_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT gl_journal_isprinted_check CHECK (isprinted in ('Y','N')),
  CONSTRAINT gl_journal_processed_check CHECK (processed in ('Y','N'))
)
;

