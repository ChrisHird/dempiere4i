-- Table: ad_migration

-- DROP TABLE ad_migration;

CREATE TABLE ad_migration FOR SYSTEM NAME admgtn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_migration_id                FOR COLUMN ad_mgnid        DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  apply                                                     CHAR(1) DEFAULT NULL,
  comments                                                  VARCHAR(255) DEFAULT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'U',
  exportxml                                                 CHAR(1) DEFAULT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  releaseno                                                 VARCHAR(60),
  seqno                                                     DECIMAL(10,0) NOT NULL,
  statuscode                                                CHAR(1) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1) DEFAULT NULL,
  processed                                                 CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_migration_key PRIMARY KEY (ad_migration_id),
  CONSTRAINT ad_migration_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_migration_processed_check CHECK (processed in ('Y','N'))
)
;

