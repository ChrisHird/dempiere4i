-- Table: ad_package_imp

-- DROP TABLE ad_package_imp;

CREATE TABLE ad_package_imp FOR SYSTEM NAME adpkgi
(
  ad_package_imp_id              FOR COLUMN ad_pkgiid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  pk_status                                                 VARCHAR(22),
  releaseno                                                 VARCHAR(20),
  pk_version                                                VARCHAR(20),
  version                                                   VARCHAR(20),
  description                    FOR COLUMN desc            VARCHAR(1000) NOT NULL,
  email                                                     VARCHAR(60),
  processed                                                 CHAR(1) DEFAULT 'N',
  processing                                                CHAR(1) NOT NULL DEFAULT 'N',
  creator                                                   VARCHAR(60),
  creatorcontact                 FOR COLUMN crtcntact       VARCHAR(255),
  createddate                    FOR COLUMN crtdate         VARCHAR(25),
  updateddate                    FOR COLUMN upddate         VARCHAR(25),
  uninstall                                                 CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_package_imp_pkey PRIMARY KEY (ad_package_imp_id)
)
;

