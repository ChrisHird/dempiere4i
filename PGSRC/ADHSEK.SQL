-- Table: ad_housekeeping

-- DROP TABLE ad_housekeeping;

CREATE TABLE ad_housekeeping FOR SYSTEM NAME adhsek
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_housekeeping_id             FOR COLUMN ad_hskid        DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  backupfolder                   FOR COLUMN buflr           VARCHAR(255),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isexportxmlbackup              FOR COLUMN isexpxbu        CHAR(1),
  issaveinhistoric               FOR COLUMN issavhist       CHAR(1),
  lastdeleted                    FOR COLUMN lstdlt          DECIMAL(10,0),
  lastrun                                                   TIMESTAMP,
  name                                                      VARCHAR(60) NOT NULL,
  processing                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_housekeeping_pkey PRIMARY KEY (ad_housekeeping_id),
  CONSTRAINT ad_housekeeping_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_housekeeping_isexportxmlbackup_check CHECK (isexportxmlbackup in ('Y','N')),
  CONSTRAINT ad_housekeeping_issaveinhistoric_check CHECK (issaveinhistoric in ('Y','N'))
)
;

