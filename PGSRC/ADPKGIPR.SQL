-- Table: ad_package_imp_proc

-- DROP TABLE ad_package_imp_proc;

CREATE TABLE ad_package_imp_proc FOR SYSTEM NAME adpkgipr
(
  ad_package_imp_proc_id         FOR COLUMN ad_pkgipid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_override_dict               FOR COLUMN ad_ovrdct       CHAR(1),
  ad_package_dir                 FOR COLUMN ad_pkgdir       VARCHAR(255),
  ad_package_source              FOR COLUMN ad_pkgsrc       VARCHAR(255),
  ad_package_source_type         FOR COLUMN ad_pkgscrt      VARCHAR(10) NOT NULL,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_package_imp_proc_pkey PRIMARY KEY (ad_package_imp_proc_id)
)
;

