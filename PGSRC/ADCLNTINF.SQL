-- Table: ad_clientinfo

-- DROP TABLE ad_clientinfo;

CREATE TABLE ad_clientinfo FOR SYSTEM NAME adclntinf
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isdiscountlineamt              FOR COLUMN isdsclamt       CHAR(1) NOT NULL DEFAULT 'Y',
  c_calendar_id                  FOR COLUMN c_cid           DECIMAL(10,0),
  c_acctschema1_id               FOR COLUMN c_as1id         DECIMAL(10,0),
  c_uom_volume_id                FOR COLUMN c_uomvid        DECIMAL(10,0),
  c_uom_weight_id                FOR COLUMN c_uomwid        DECIMAL(10,0),
  c_uom_length_id                FOR COLUMN c_uomlid        DECIMAL(10,0),
  c_uom_time_id                  FOR COLUMN c_uomtid        DECIMAL(10,0),
  ad_tree_menu_id                FOR COLUMN ad_tmid         DECIMAL(10,0),
  ad_tree_org_id                 FOR COLUMN ad_toid         DECIMAL(10,0),
  ad_tree_bpartner_id            FOR COLUMN ad_tbpid        DECIMAL(10,0),
  ad_tree_project_id             FOR COLUMN ad_tpid         DECIMAL(10,0),
  ad_tree_salesregion_id         FOR COLUMN ad_tsrid        DECIMAL(10,0),
  ad_tree_product_id             FOR COLUMN ad_tprdid       DECIMAL(10,0),
  m_productfreight_id            FOR COLUMN m_pfid          DECIMAL(10,0),
  c_bpartnercashtrx_id           FOR COLUMN c_bpctid        DECIMAL(10,0),
  keeplogdays                    FOR COLUMN kld             DECIMAL(10,0),
  ad_tree_activity_id            FOR COLUMN ad_taid         DECIMAL(10,0),
  ad_tree_campaign_id            FOR COLUMN ad_tcid         DECIMAL(10,0),
  logo_id                                                   DECIMAL(10,0),
  logoreport_id                  FOR COLUMN logortpid       DECIMAL(10,0),
  logoweb_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  restorepassword_mailtext_id    FOR COLUMN rstpwmtid       DECIMAL(10,0),
  CONSTRAINT ad_clientinfo_pkey PRIMARY KEY (ad_client_id),
  CONSTRAINT ad_clientinfo_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_clientinfo_isdiscountlineamt_check CHECK (isdiscountlineamt in ('Y','N'))
)
;

