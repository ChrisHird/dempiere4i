-- Table: ad_package_imp_backup

-- DROP TABLE ad_package_imp_backup;

CREATE TABLE ad_package_imp_backup FOR SYSTEM NAME adpkgibck
(
  ad_package_imp_backup_id       FOR COLUMN ad_pkgibid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_package_imp_id              FOR COLUMN ad_pkgiid       DECIMAL(10,0) NOT NULL,
  ad_package_imp_detail_id       FOR COLUMN ad_pkgidid      DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0),
  ad_package_imp_bck_dir         FOR COLUMN ad_pkgibdr      VARCHAR(255),
  ad_package_imp_org_dir         FOR COLUMN ad_pkgioid      VARCHAR(255),
  colvalue                                                  VARCHAR(2000),
  uninstall                                                 CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_package_imp_backup_pkey PRIMARY KEY (ad_package_imp_backup_id)
)
  ;
