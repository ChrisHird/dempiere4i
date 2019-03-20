-- Table: ad_package_exp

-- DROP TABLE ad_package_exp;

CREATE TABLE ad_package_exp FOR SYSTEM NAME adpkge
(
  ad_package_exp_id              FOR COLUMN ad_pkgxid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_package_type                FOR COLUMN ad_pkgtyp       VARCHAR(1),
  email                                                     VARCHAR(30) NOT NULL,
  instructions                   FOR COLUMN instrs          VARCHAR(1000) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  processed                                                 CHAR(1),
  releaseno                                                 VARCHAR(20) NOT NULL,
  version                                                   VARCHAR(20) NOT NULL,
  username                                                  VARCHAR(30) NOT NULL,
  processing                                                CHAR(1) NOT NULL,
  pk_version                                                VARCHAR(20) NOT NULL,
  file_directory                 FOR COLUMN file_dir        VARCHAR(255) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(1000) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_package_exp_pkey PRIMARY KEY (ad_package_exp_id)
)
;

