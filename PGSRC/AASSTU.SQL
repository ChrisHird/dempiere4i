-- Table: a_asset_use

-- DROP TABLE a_asset_use;

CREATE TABLE a_asset_use FOR SYSTEM NAME aasstu
(
  a_asset_use_id                 FOR COLUMN a_auid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  usedate                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  useunits                                                  DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_use_pkey PRIMARY KEY (a_asset_use_id),
  CONSTRAINT a_asset_use_isactive_check CHECK (isactive in ('Y','N'))
)
;

