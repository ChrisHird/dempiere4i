-- Table: cm_webproject

-- DROP TABLE cm_webproject;

CREATE TABLE cm_webproject FOR SYSTEM NAME cmwprj
(
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  meta_copyright                 FOR COLUMN meta_cpyr       VARCHAR(2000) NOT NULL,
  meta_publisher                 FOR COLUMN meta_pub        VARCHAR(2000) NOT NULL,
  meta_robotstag                 FOR COLUMN meta_rbttg      VARCHAR(2000) NOT NULL,
  meta_author                    FOR COLUMN meta_athr       VARCHAR(2000) NOT NULL,
  meta_content                   FOR COLUMN meta_ctnt       VARCHAR(2000) NOT NULL,
  ad_treecmc_id                  FOR COLUMN ad_trcmcid      DECIMAL(10,0) NOT NULL,
  ad_treecms_id                  FOR COLUMN ad_trcmsid      DECIMAL(10,0) NOT NULL,
  ad_treecmm_id                  FOR COLUMN ad_trcmmid      DECIMAL(10,0) NOT NULL,
  ad_treecmt_id                  FOR COLUMN ad_trcmtid      DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_webproject_pkey PRIMARY KEY (cm_webproject_id),
  CONSTRAINT cm_webproject_isactive_check CHECK (isactive in ('Y','N'))
)
;

