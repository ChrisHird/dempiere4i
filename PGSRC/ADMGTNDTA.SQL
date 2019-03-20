-- Table: ad_migrationdata

-- DROP TABLE ad_migrationdata;

CREATE TABLE ad_migrationdata FOR SYSTEM NAME admgtndta
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0) NOT NULL,
  ad_migrationdata_id            FOR COLUMN ad_mgntaid     DECIMAL(10,0) NOT NULL,
  ad_migrationstep_id            FOR COLUMN ad_mgnstid      DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  backupvalue                    FOR COLUMN buval           VARCHAR(2000),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isbackupnull                   FOR COLUMN isbunull        CHAR(1) DEFAULT NULL,
  isoldnull                                                 CHAR(1) DEFAULT NULL,
  isnewnull                                                 CHAR(1) DEFAULT NULL,
  newvalue                                                  VARCHAR(2000),
  oldvalue                                                  VARCHAR(2000) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_migrationdata_key PRIMARY KEY (ad_migrationdata_id),
  CONSTRAINT ad_migrationdata_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_migrationdata_isbackupnull_check CHECK (isbackupnull in ('Y','N')),
  CONSTRAINT ad_migrationdata_isnewnull_check CHECK (isnewnull in ('Y','N')),
  CONSTRAINT ad_migrationdata_isoldnull_check CHECK (isoldnull in ('Y','N'))
)
;

