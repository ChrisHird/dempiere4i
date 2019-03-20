-- Table: a_asset_reval_entry

-- DROP TABLE a_asset_reval_entry;

CREATE TABLE a_asset_reval_entry FOR SYSTEM NAME aasstreve
(
  a_asset_reval_entry_id         FOR COLUMN a_arventid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  a_effective_date               FOR COLUMN a_efdte          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  a_reval_cal_method             FOR COLUMN a_rcalmd        VARCHAR(3) NOT NULL,
  a_reval_multiplier             FOR COLUMN a_rvmlt         VARCHAR(3) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  datedoc                                                   TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  processing                                                CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL,
  postingtype                    FOR COLUMN posttyp         CHAR(1) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  gl_category_id                 FOR COLUMN gl_cid          DECIMAL(10,0),
  documentno                                                VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(510) NOT NULL,
  dateacct                                                  TIMESTAMP,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0),
  a_reval_effective_date         FOR COLUMN a_rvedte        VARCHAR(2) NOT NULL,
  a_rev_code                                                VARCHAR(3) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_reval_entry_pkey PRIMARY KEY (a_asset_reval_entry_id),
  CONSTRAINT a_asset_reval_entry_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_asset_reval_entry_processed_check CHECK (processed in ('Y','N'))
)
;

