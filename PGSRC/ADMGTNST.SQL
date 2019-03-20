-- Table: ad_migrationstep

-- DROP TABLE ad_migrationstep;

CREATE TABLE ad_migrationstep FOR SYSTEM NAME admgtnst
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_migrationstep_id            FOR COLUMN ad_mgnstid      DECIMAL(10,0) NOT NULL,
  ad_migration_id                FOR COLUMN ad_mgnid        DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  action                                                    CHAR(1),
  apply                                                     CHAR(1) DEFAULT NULL,
  comments                                                  VARCHAR(255) DEFAULT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dbtype                                                    VARCHAR(22) DEFAULT 'ALL',
  errormsg                                                  VARCHAR(2000) DEFAULT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  record_id                                                 DECIMAL(10,0),
  seqno                                                     DECIMAL(10,0) NOT NULL,
  statuscode                                                CHAR(1) DEFAULT NULL,
  steptype                                                  VARCHAR(20) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  parse                                                     CHAR(1) DEFAULT 'Y',
  sqlstatement                   FOR COLUMN sqlstmnt        CLOB,
  rollbackstatement              FOR COLUMN rbackstmt       CLOB,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_migrationstep_key PRIMARY KEY (ad_migrationstep_id),
  CONSTRAINT ad_migrationstep_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_migrationstep_parse_check CHECK (parse in ('Y','N'))
)
;

