-- Table: a_asset_change_amt

-- DROP TABLE a_asset_change_amt;

CREATE TABLE a_asset_change_amt FOR SYSTEM NAME aasstchga
(
  a_asset_change_id              FOR COLUMN a_acid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  assetvalueamt                  FOR COLUMN ava             DECFLOAT(16) NOT NULL DEFAULT 0,
  assetmarketvalueamt            FOR COLUMN amva            DECFLOAT(16) NOT NULL DEFAULT 0,
  assetbookvalueamt              FOR COLUMN abva            DECFLOAT(16) NOT NULL DEFAULT 0,
  assetaccumdepreciationamt      FOR COLUMN aada            DECFLOAT(16) NOT NULL DEFAULT 0,
  CONSTRAINT a_asset_change_amt_pkey PRIMARY KEY (a_asset_change_id, c_acctschema_id),
  CONSTRAINT a_asset_change_amt_isactive_check CHECK (isactive in ('Y','N'))
)
;

