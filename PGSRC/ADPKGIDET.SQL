-- Table: ad_package_imp_detail

-- DROP TABLE ad_package_imp_detail;

CREATE TABLE ad_package_imp_detail FOR SYSTEM NAME adpkgidet
(
  ad_package_imp_detail_id       FOR COLUMN ad_pkgidid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60),
  ad_package_imp_id              FOR COLUMN ad_pkgiid       DECIMAL(10,0) NOT NULL,
  ad_original_id                 FOR COLUMN ad_orgnid       DECIMAL(10,0) NOT NULL,
  ad_backup_id                   FOR COLUMN ad_buid         DECIMAL(10,0),
  action                                                    VARCHAR(20),
  success                                                   VARCHAR(20),
  type                                                      VARCHAR(60),
  tablename                                                 VARCHAR(60),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  uninstall                                                 CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_package_imp_detail_pkey PRIMARY KEY (ad_package_imp_detail_id)
)
;

