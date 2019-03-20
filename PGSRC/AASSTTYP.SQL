-- Table: a_asset_type

-- DROP TABLE a_asset_type;

CREATE TABLE a_asset_type FOR SYSTEM NAME aassttyp
(
  a_asset_type_id                FOR COLUMN a_atypid        DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(120) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isowned                                                   VARCHAR(2) NOT NULL DEFAULT 'XX',
  isinposession                  FOR COLUMN isinposn        VARCHAR(2) NOT NULL DEFAULT 'XX',
  isdepreciable                  FOR COLUMN isdeprec        VARCHAR(2) NOT NULL DEFAULT 'XX',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_type_key PRIMARY KEY (a_asset_type_id),
  CONSTRAINT a_asset_type_isactive_check CHECK (isactive in ('Y','N'))
)
;

