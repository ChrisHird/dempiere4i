-- Table: gl_journalbatch

-- DROP TABLE gl_journalbatch;

CREATE TABLE gl_journalbatch FOR SYSTEM NAME gljrnbch
(
  gl_journalbatch_id             FOR COLUMN gl_jbid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  postingtype                    FOR COLUMN posttyp         CHAR(1) NOT NULL,
  gl_category_id                 FOR COLUMN gl_cid          DECIMAL(10,0),
  datedoc                                                   TIMESTAMP,
  dateacct                                                  TIMESTAMP,
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  totaldr                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  totalcr                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  controlamt                                                DECFLOAT(16) DEFAULT 0,
  processing                                                CHAR(1) NOT NULL DEFAULT 'N',
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  copyfrom                                                  CHAR(1),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  docstatus                                                 CHAR(2) NOT NULL,
  docaction                                                 CHAR(2) NOT NULL,
  isapproved                                                CHAR(1),
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT gl_journalbatch_pkey PRIMARY KEY (gl_journalbatch_id),
  CONSTRAINT gl_journalbatch_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT gl_journalbatch_processed_check CHECK (processed in ('Y','N')),
  CONSTRAINT gl_journalbatch_processing_check CHECK (processing in ('Y','N'))
)
;

