-- Table: ad_emailconfig

-- DROP TABLE ad_emailconfig;

CREATE TABLE ad_emailconfig FOR SYSTEM NAME ademcfg
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_emailconfig_id              FOR COLUMN ad_emcfgid      DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  authmechanism                  FOR COLUMN autmech         CHAR(1) NOT NULL DEFAULT 'L',
  connectiontimeout              FOR COLUMN cnnto           DECIMAL(10,0) DEFAULT 0,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  encryptiontype                 FOR COLUMN encrtyp         CHAR(1) NOT NULL DEFAULT 'N',
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  issmtpauthorization            FOR COLUMN issmpta         CHAR(1) DEFAULT 'N',
  ldapdomain                                                VARCHAR(255),
  name                                                      VARCHAR(60) NOT NULL,
  port                                                      DECIMAL(10,0) NOT NULL,
  protocol                                                  CHAR(1) NOT NULL,
  smtphost                                                  VARCHAR(60) NOT NULL,
  timeout                                                   DECIMAL(10,0) DEFAULT 0,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_emailconfig_key PRIMARY KEY (ad_emailconfig_id),
  CONSTRAINT ad_emailconfig_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_emailconfig_issmtpauthorization_check CHECK (issmtpauthorization in ('Y','N'))
)
;

