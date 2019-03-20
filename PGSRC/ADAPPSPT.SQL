-- Table: ad_appsupport

-- DROP TABLE ad_appsupport;

CREATE TABLE ad_appsupport FOR SYSTEM NAME adappspt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_appsupport_id               FOR COLUMN ad_apsptid      DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) NOT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  classname                                                 VARCHAR(255) NOT NULL,
  applicationtype                FOR COLUMN apltyp          VARCHAR(3) NOT NULL,
  isdefault                                                 CHAR(1) DEFAULT 'N',
  CONSTRAINT ad_appsupport_key PRIMARY KEY (ad_appsupport_id),
  CONSTRAINT ad_appsupport_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_appsupport_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

