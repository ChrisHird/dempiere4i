-- Table: ad_appregistration

-- DROP TABLE ad_appregistration;

CREATE TABLE ad_appregistration FOR SYSTEM NAME adappreg
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_appregistration_id          FOR COLUMN ad_aprgid       DECIMAL(10,0) NOT NULL,
  applicationtype                FOR COLUMN apltyp          VARCHAR(3) NOT NULL,
  timeout                                                   DECIMAL(10,0),
  port                                                      DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  value                                                     VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  host                                                      VARCHAR(255) NOT NULL,
  versionno                                                 VARCHAR(20) NOT NULL,
  ad_appsupport_id               FOR COLUMN ad_apsptid      DECIMAL(10,0) NOT NULL,
  CONSTRAINT ad_appregistration_key PRIMARY KEY (ad_appregistration_id),
  CONSTRAINT ad_appregistration_isactive_check CHECK (isactive in ('Y','N'))
)
;

