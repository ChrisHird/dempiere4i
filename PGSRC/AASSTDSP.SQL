-- Table: a_asset_disposed

-- DROP TABLE a_asset_disposed;

CREATE TABLE a_asset_disposed FOR SYSTEM NAME aasstdsp
(
  a_asset_disposed_id            FOR COLUMN a_adspid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  a_disposed_date                FOR COLUMN a_dspdte         TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  a_disposed_reason              FOR COLUMN a_dsprsn        VARCHAR(10),
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  datedoc                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  processed                                                 CHAR(1) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  processing                                                CHAR(1) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  dateacct                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  a_proceeds                                                DECFLOAT(16),
  a_disposed_method              FOR COLUMN a_dspmtd        VARCHAR(2) NOT NULL,
  a_asset_trade_id               FOR COLUMN a_atdid         DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  docaction                                                 CHAR(2) DEFAULT 'CO',
  docstatus                                                 VARCHAR(2) DEFAULT 'DR',
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  documentno                                                VARCHAR(30) NOT NULL,
  a_activation_method            FOR COLUMN a_actmd         VARCHAR(2) NOT NULL DEFAULT 'AA',
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isdisposed                                                CHAR(1) DEFAULT NULL,
  a_asset_status                 FOR COLUMN a_asts          VARCHAR(2) DEFAULT NULL,
  a_disposal_amt                 FOR COLUMN a_dspamt        DECFLOAT(16) NOT NULL DEFAULT 0,
  expense                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  a_accumulated_depr             FOR COLUMN a_adep          DECFLOAT(16) NOT NULL DEFAULT 0,
  postingtype                    FOR COLUMN posttyp         CHAR(1) NOT NULL DEFAULT 'A',
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  a_accumulated_depr_delta       FOR COLUMN a_adepd         DECFLOAT(16) NOT NULL DEFAULT 0,
  a_asset_cost                   FOR COLUMN a_acst          DECFLOAT(16),
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_disposed_pkey PRIMARY KEY (a_asset_disposed_id),
  CONSTRAINT a_asset_disposed_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_asset_disposed_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT a_asset_disposed_isdisposed_check CHECK (isdisposed in ('Y','N')),
  CONSTRAINT a_asset_disposed_processed_check CHECK (processed in ('Y','N'))
)
;

