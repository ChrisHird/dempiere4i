-- Table: a_depreciation_entry

-- DROP TABLE a_depreciation_entry;

CREATE TABLE a_depreciation_entry FOR SYSTEM NAME adepent
(
  a_depreciation_entry_id        FOR COLUMN a_depeid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  a_entry_type                   FOR COLUMN a_enttyp        VARCHAR(3),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0) NOT NULL,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  datedoc                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  documentno                                                VARCHAR(60) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  processing                                                CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  postingtype                    FOR COLUMN posttyp         CHAR(1) NOT NULL DEFAULT 'A',
  gl_category_id                 FOR COLUMN gl_cid          DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(510),
  dateacct                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  docstatus                                                 VARCHAR(2) NOT NULL DEFAULT 'DR',
  docaction                                                 CHAR(2) NOT NULL DEFAULT 'CO',
  isapproved                                                CHAR(1) NOT NULL,
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_entry_pkey PRIMARY KEY (a_depreciation_entry_id),
  CONSTRAINT a_depreciation_entry_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_depreciation_entry_isapproved_check CHECK (isapproved in ('Y','N'))
)
;

