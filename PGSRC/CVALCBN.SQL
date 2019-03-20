-- Table: c_validcombination

-- DROP TABLE c_validcombination;

CREATE TABLE c_validcombination FOR SYSTEM NAME cvalcbn
(
  c_validcombination_id          FOR COLUMN c_vcid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  alias                                                     VARCHAR(40),
  combination                    FOR COLUMN comb            VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  isfullyqualified               FOR COLUMN isflyqual       CHAR(1) NOT NULL DEFAULT 'Y',
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  account_id                                                DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  c_locfrom_id                   FOR COLUMN c_lfid          DECIMAL(10,0),
  c_locto_id                                                DECIMAL(10,0),
  c_salesregion_id               FOR COLUMN c_srid          DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  c_subacct_id                   FOR COLUMN c_subaid        DECIMAL(10,0),
  userelement1_id                FOR COLUMN usrelm1id       DECIMAL(10,0),
  userelement2_id                FOR COLUMN usrelm2id       DECIMAL(10,0),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_validcombination_pkey PRIMARY KEY (c_validcombination_id),
  CONSTRAINT c_validcombination_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_validcombination_isfullyqualified_check CHECK (isfullyqualified in ('Y','N'))
)
;

