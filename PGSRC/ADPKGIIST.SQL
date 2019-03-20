-- Table: ad_package_imp_inst

-- DROP TABLE ad_package_imp_inst;

CREATE TABLE ad_package_imp_inst FOR SYSTEM NAME adpkgiist
(
  ad_package_imp_inst_id         FOR COLUMN ad_pkgiiid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) DEFAULT 'Y',
  created                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  name                                                      VARCHAR(240),
  pk_status                                                 VARCHAR(44),
  releaseno                                                 VARCHAR(40),
  pk_version                                                VARCHAR(40),
  version                                                   VARCHAR(40),
  description                    FOR COLUMN desc            VARCHAR(2000),
  email                                                     VARCHAR(120),
  processed                                                 CHAR(1) DEFAULT 'N',
  processing                                                CHAR(1) DEFAULT 'N',
  creator                                                   VARCHAR(120),
  creatorcontact                 FOR COLUMN crtcntact       VARCHAR(510),
  createddate                    FOR COLUMN crtdate         VARCHAR(50),
  updateddate                    FOR COLUMN upddate         VARCHAR(50),
  uninstall                                                 CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_package_imp_inst_pkey PRIMARY KEY (ad_package_imp_inst_id)
)
;

