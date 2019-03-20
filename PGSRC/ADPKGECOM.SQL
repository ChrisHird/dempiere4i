-- Table: ad_package_exp_common

-- DROP TABLE ad_package_exp_common;

CREATE TABLE ad_package_exp_common FOR SYSTEM NAME adpkgecom
(
  ad_package_exp_common_id       FOR COLUMN ad_pkgxcid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_form_id                                                DECIMAL(10,0),
  ad_impformat_id                FOR COLUMN ad_ifid         DECIMAL(10,0),
  ad_reportview_id               FOR COLUMN ad_rptvid       DECIMAL(10,0),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  ad_workbench_id                FOR COLUMN ad_wid          DECIMAL(10,0),
  dbtype                                                    VARCHAR(22),
  processed                                                 CHAR(1),
  name                                                      VARCHAR(60),
  name2                                                     VARCHAR(60),
  line                                                      DECFLOAT(16),
  file_directory                 FOR COLUMN file_dir        VARCHAR(255),
  filename                                                  VARCHAR(255),
  destination_directory          FOR COLUMN dest_dir        VARCHAR(255),
  description                    FOR COLUMN desc            VARCHAR(1000),
  type                                                      VARCHAR(10),
  target_directory               FOR COLUMN tgt_dir         VARCHAR(255),
  sqlstatement                   FOR COLUMN sqlstmnt        VARCHAR(255),
  processing                                                CHAR(1),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  ad_role_id                                                DECIMAL(10,0),
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0),
  ad_menu_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_package_exp_common_pkey PRIMARY KEY (ad_package_exp_common_id)
)
  ;
