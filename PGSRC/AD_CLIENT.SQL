-- Table: ad_client

-- DROP TABLE ad_client;

CREATE TABLE ad_client
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  smtphost                                                  VARCHAR(60),
  requestemail                   FOR COLUMN reqem           VARCHAR(60),
  requestuser                    FOR COLUMN requsr          VARCHAR(60),
  requestuserpw                  FOR COLUMN requsrpw        VARCHAR(20),
  requestfolder                  FOR COLUMN reqflr          VARCHAR(20),
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6),
  ismultilingualdocument         FOR COLUMN ismlngdoc       CHAR(1) NOT NULL DEFAULT 'N',
  issmtpauthorization            FOR COLUMN issmpta         CHAR(1) NOT NULL DEFAULT 'N',
  isusebetafunctions             FOR COLUMN isusebfunc      CHAR(1) NOT NULL DEFAULT 'N',
  ldapquery                                                 VARCHAR(255),
  modelvalidationclasses         FOR COLUMN mvalclss        VARCHAR(255),
  autoarchive                    FOR COLUMN aarch           CHAR(1) NOT NULL DEFAULT 'N',
  mmpolicy                                                  CHAR(1) NOT NULL DEFAULT 'F',
  emailtest                                                 CHAR(1),
  isserveremail                  FOR COLUMN issrvem         CHAR(1) NOT NULL DEFAULT 'N',
  documentdir                    FOR COLUMN docdir          VARCHAR(60),
  ispostimmediate                FOR COLUMN ispstimd        CHAR(1) NOT NULL DEFAULT 'N',
  iscostimmediate                FOR COLUMN iscstimd        CHAR(1) NOT NULL DEFAULT 'N',
  storeattachmentsonfilesystem   FOR COLUMN satchfs         CHAR(1) NOT NULL DEFAULT 'N',
  windowsattachmentpath          FOR COLUMN winatchp        VARCHAR(255),
  unixattachmentpath             FOR COLUMN unxatcp         VARCHAR(255),
  storearchiveonfilesystem       FOR COLUMN sarchfs         CHAR(1) NOT NULL DEFAULT 'N',
  windowsarchivepath             FOR COLUMN winarchp        VARCHAR(255),
  unixarchivepath                FOR COLUMN unxapth         VARCHAR(255),
  isuseasp                                                  CHAR(1) NOT NULL DEFAULT 'N',
  ad_replicationstrategy_id      FOR COLUMN ad_rsid         DECIMAL(10,0),
  ad_emailconfig_id              FOR COLUMN ad_emcfgid      DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_client_pkey PRIMARY KEY (ad_client_id),
  CONSTRAINT ad_client_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_client_isuseasp_check CHECK (isuseasp in ('Y','N'))
)
;

