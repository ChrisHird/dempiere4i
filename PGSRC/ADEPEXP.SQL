-- Table: a_depreciation_exp

-- DROP TABLE a_depreciation_exp;

CREATE TABLE a_depreciation_exp FOR SYSTEM NAME adepexp
(
  a_depreciation_exp_id          FOR COLUMN a_depexid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_entry_type                   FOR COLUMN a_enttyp        VARCHAR(3) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateacct                                                  TIMESTAMP,
  expense                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  isdepreciated                  FOR COLUMN isdeptd         CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  postingtype                    FOR COLUMN posttyp         CHAR(1) DEFAULT 'A',
  isactive                                                  CHAR(1) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  a_period                                                  DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  dr_account_id                  FOR COLUMN dr_actid        DECIMAL(10,0),
  cr_account_id                  FOR COLUMN cr_actid        DECIMAL(10,0),
  expense_f                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  processing                                                CHAR(1) DEFAULT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  a_asset_cost                   FOR COLUMN a_acst          DECFLOAT(16),
  a_accumulated_depr             FOR COLUMN a_adep          DECFLOAT(16),
  a_accumulated_depr_f           FOR COLUMN a_adepf         DECFLOAT(16),
  uselifemonths                  FOR COLUMN ulm             DECIMAL(10,0),
  uselifemonths_f                FOR COLUMN uselfmf         DECIMAL(10,0),
  a_asset_remaining              FOR COLUMN a_aremn         DECFLOAT(16),
  a_asset_remaining_f            FOR COLUMN a_aremnf        DECFLOAT(16),
  a_asset_cost_delta             FOR COLUMN a_acstdt        DECFLOAT(16) NOT NULL DEFAULT 0,
  a_accumulated_depr_delta       FOR COLUMN a_adepd         DECFLOAT(16) NOT NULL DEFAULT 0,
  a_accumulated_depr_f_delta     FOR COLUMN a_depfd         DECFLOAT(16) NOT NULL DEFAULT 0,
  a_asset_addition_id            FOR COLUMN a_aaid          DECIMAL(10,0),
  a_asset_disposed_id            FOR COLUMN a_adspid        DECIMAL(10,0),
  a_depreciation_entry_id        FOR COLUMN a_depeid        DECIMAL(10,0),
  a_account_number_acct          FOR COLUMN a_anbra         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_exp_pkey PRIMARY KEY (a_depreciation_exp_id),
  CONSTRAINT a_depreciation_exp_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_depreciation_exp_isdepreciated_check CHECK (isdepreciated in ('Y','N')),
  CONSTRAINT a_depreciation_exp_processed_check CHECK (processed in ('Y','N'))
)
;

