-- Table: a_asset_class

-- DROP TABLE a_asset_class;

CREATE TABLE a_asset_class FOR SYSTEM NAME aasstcls
(
  a_asset_class_id               FOR COLUMN a_aclsid        DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(2000),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) DEFAULT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(2000) NOT NULL,
  a_life_period_min              FOR COLUMN a_lfpdmn        DECIMAL(10,0) NOT NULL,
  a_life_period_max              FOR COLUMN a_lfpdmx        DECIMAL(10,0) NOT NULL,
  a_value_2004                   FOR COLUMN a_val4          VARCHAR(40) DEFAULT NULL,
  a_life_period_2004             FOR COLUMN a_lfpd4         DECIMAL(10,0),
  mfx_grupa                                                 DECIMAL(10,0),
  mfx_subgrupa                   FOR COLUMN mfx_sgrpa       DECIMAL(10,0),
  mfx_clasa                                                 DECIMAL(10,0),
  mfx_subclasa                   FOR COLUMN mfx_sclsa       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_class_key PRIMARY KEY (a_asset_class_id),
  CONSTRAINT a_asset_class_isactive_check CHECK (isactive in ('Y','N'))
)
;

