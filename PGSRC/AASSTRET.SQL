-- Table: a_asset_retirement

-- DROP TABLE a_asset_retirement;

CREATE TABLE a_asset_retirement FOR SYSTEM NAME aasstret
(
  a_asset_retirement_id          FOR COLUMN a_arid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  assetvalueamt                  FOR COLUMN ava             DECFLOAT(16) NOT NULL DEFAULT 0,
  assetmarketvalueamt            FOR COLUMN amva            DECFLOAT(16) NOT NULL DEFAULT 0,
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_retirement_pkey PRIMARY KEY (a_asset_retirement_id),
  CONSTRAINT a_asset_retirement_isactive_check CHECK (isactive in ('Y','N'))
)
;

