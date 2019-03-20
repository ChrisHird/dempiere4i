-- Table: ad_migrationscript

-- DROP TABLE ad_migrationscript;

CREATE TABLE ad_migrationscript FOR SYSTEM NAME admgtnsc
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_migrationscript_id          FOR COLUMN ad_mgnsid       DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(2000),
  developername                  FOR COLUMN devname         VARCHAR(60),
  isactive                                                  CHAR(1) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  projectname                    FOR COLUMN prjname         VARCHAR(60) NOT NULL,
  reference                                                 VARCHAR(2000),
  releaseno                                                 VARCHAR(10) NOT NULL,
  scriptroll                                                CHAR(1),
  status                                                    CHAR(2) NOT NULL,
  url                                                       VARCHAR(2000),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isapply                                                   CHAR(1) NOT NULL,
  filename                                                  VARCHAR(500) NOT NULL,
  script                                                    BLOB,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_migrationscript_pkey PRIMARY KEY (ad_migrationscript_id),
  CONSTRAINT ad_migrationscript_isact_chk CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_migrationscript_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_migrationscript_isapply_chk CHECK (isapply in ('Y','N'))
)
;

