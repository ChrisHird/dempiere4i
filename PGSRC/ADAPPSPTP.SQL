-- Table: ad_appsupport_para

-- DROP TABLE ad_appsupport_para;

CREATE TABLE ad_appsupport_para FOR SYSTEM NAME adappsptp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_appsupport_para_id          FOR COLUMN ad_apsppid      DECIMAL(10,0) NOT NULL,
  parametername                  FOR COLUMN parmnme         VARCHAR(60) NOT NULL,
  parameterdefault               FOR COLUMN parmdft         VARCHAR(255) DEFAULT NULL,
  parametertype                  FOR COLUMN parmtyp         CHAR(1) NOT NULL DEFAULT 'C',
  ismandatory                    FOR COLUMN ismand          CHAR(1) DEFAULT 'N',
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0) NOT NULL DEFAULT 10,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  ad_appsupport_id               FOR COLUMN ad_apsptid      DECIMAL(10,0) NOT NULL,
  CONSTRAINT ad_appsupport_para_key PRIMARY KEY (ad_appsupport_para_id),
  CONSTRAINT ad_appsupport_para_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_appsupport_para_ismandatory_check CHECK (ismandatory in ('Y','N'))
)
;

