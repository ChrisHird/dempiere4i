-- Table: c_project_acct

-- DROP TABLE c_project_acct;

CREATE TABLE c_project_acct FOR SYSTEM NAME cprojacct
(
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pj_asset_acct                  FOR COLUMN pj_aa           DECIMAL(10,0) NOT NULL,
  pj_wip_acct                    FOR COLUMN pj_wipa         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_project_acct_pkey PRIMARY KEY (c_project_id, c_acctschema_id),
  CONSTRAINT c_project_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

