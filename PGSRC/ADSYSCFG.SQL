-- Table: ad_sysconfig

-- DROP TABLE ad_sysconfig;

CREATE TABLE ad_sysconfig FOR SYSTEM NAME adsyscfg
(
  ad_sysconfig_id                FOR COLUMN ad_sycfgid     DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(50) NOT NULL,
  value                                                     VARCHAR(255) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'U',
  configurationlevel             FOR COLUMN cfglvl          CHAR(1) DEFAULT 'S',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_sysconfig_pkey PRIMARY KEY (ad_sysconfig_id),
  CONSTRAINT ad_sysconfig_isactive_check CHECK (isactive in ('Y','N'))
)
;

