-- Table: a_asset_reval

-- DROP TABLE a_asset_reval;

CREATE TABLE a_asset_reval FOR SYSTEM NAME asstrev
(
  a_asset_reval_id               FOR COLUMN a_arvid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dateacct                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  datedoc                                                   TIMESTAMP,
  docstatus                                                 VARCHAR(2) NOT NULL DEFAULT 'DR',
  documentno                                                VARCHAR(30) DEFAULT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  posted                                                    CHAR(1) DEFAULT NULL,
  postingtype                    FOR COLUMN posttyp         CHAR(1) NOT NULL DEFAULT 'A',
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1) NOT NULL DEFAULT 'N',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  a_asset_cost                   FOR COLUMN a_acst          DECFLOAT(16),
  a_accumulated_depr             FOR COLUMN a_adep          DECFLOAT(16),
  a_asset_cost_change            FOR COLUMN a_acstchg       DECFLOAT(16) NOT NULL DEFAULT 0,
  a_change_acumulated_depr       FOR COLUMN a_cgacddpr      DECFLOAT(16) NOT NULL DEFAULT 0,
  docaction                                                 CHAR(2) NOT NULL DEFAULT 'CO',
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_reval_key PRIMARY KEY (a_asset_reval_id),
  CONSTRAINT a_asset_reval_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_asset_reval_processed_check CHECK (processed in ('Y','N')),
  CONSTRAINT a_asset_reval_processing_check CHECK (processing in ('Y','N'))
)
;

