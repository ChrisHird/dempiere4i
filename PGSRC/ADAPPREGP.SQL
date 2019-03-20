-- Table: ad_appregistration_para

-- DROP TABLE ad_appregistration_para;

CREATE TABLE ad_appregistration_para FOR SYSTEM NAME adappregp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_appregistration_para_id     FOR COLUMN ad_aprgpid      DECIMAL(10,0) NOT NULL,
  parametername                  FOR COLUMN parmnme         VARCHAR(60) NOT NULL,
  parametertype                  FOR COLUMN parmtyp         CHAR(1) NOT NULL DEFAULT 'C',
  parametervalue                 FOR COLUMN parmval         VARCHAR(255) DEFAULT NULL,
  ad_appregistration_id          FOR COLUMN ad_aprgid       DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  ad_appsupport_para_id          FOR COLUMN ad_apsppid     DECIMAL(10,0),
  CONSTRAINT ad_appregistration_para_key PRIMARY KEY (ad_appregistration_para_id),
  CONSTRAINT ad_appregistration_para_isactive_check CHECK (isactive in ('Y','N'))
)
;

