-- Table: pa_hierarchy

-- DROP TABLE pa_hierarchy;

CREATE TABLE pa_hierarchy FOR SYSTEM NAME paheir
(
  pa_hierarchy_id                FOR COLUMN pa_heirid       DECIMAL(10,0) NOT NULL,
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
  ad_tree_org_id                 FOR COLUMN ad_toid         DECIMAL(10,0) NOT NULL,
  ad_tree_bpartner_id            FOR COLUMN ad_tbpid        DECIMAL(10,0) NOT NULL,
  ad_tree_project_id             FOR COLUMN ad_tpid         DECIMAL(10,0) NOT NULL,
  ad_tree_salesregion_id         FOR COLUMN ad_tsrid        DECIMAL(10,0) NOT NULL,
  ad_tree_product_id             FOR COLUMN ad_tprdid       DECIMAL(10,0) NOT NULL,
  ad_tree_campaign_id            FOR COLUMN ad_tcid         DECIMAL(10,0) NOT NULL,
  ad_tree_activity_id            FOR COLUMN ad_taid         DECIMAL(10,0) NOT NULL,
  ad_tree_account_id             FOR COLUMN ad_traid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_hierarchy_pkey PRIMARY KEY (pa_hierarchy_id),
  CONSTRAINT pa_hierarchy_isactive_check CHECK (isactive in ('Y','N'))
)
;

