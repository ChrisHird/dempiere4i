-- Table: fact_acct_summary

-- DROP TABLE fact_acct_summary;

CREATE TABLE fact_acct_summary FOR SYSTEM NAME factacsm
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  account_id                                                DECIMAL(10,0) NOT NULL,
  amtacctcr                                                 DECFLOAT(16) NOT NULL,
  amtacctdr                                                 DECFLOAT(16) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_locfrom_id                   FOR COLUMN c_lfid          DECIMAL(10,0),
  c_locto_id                                                DECIMAL(10,0),
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0) NOT NULL,
  c_projectphase_id              FOR COLUMN c_prjpid        DECIMAL(10,0),
  c_projecttask_id               FOR COLUMN c_prjtskid      DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_salesregion_id               FOR COLUMN c_srid          DECIMAL(10,0),
  c_subacct_id                   FOR COLUMN c_subaid        DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  gl_budget_id                   FOR COLUMN gl_bid          DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  pa_reportcube_id               FOR COLUMN pa_rptcid       DECIMAL(10,0) NOT NULL,
  postingtype                    FOR COLUMN posttyp         CHAR(1) NOT NULL,
  qty                                                       DECFLOAT(16) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  userelement1_id                FOR COLUMN usrelm1id       DECIMAL(10,0),
  userelement2_id                FOR COLUMN usrelm2id       DECIMAL(10,0),
  dateacct                                                  TIMESTAMP,
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT fact_acct_summary_isactive_check CHECK (isactive in ('Y','N'))
)
;

