-- Table: wm_definition

-- DROP TABLE wm_definition;

CREATE TABLE wm_definition FOR SYSTEM NAME wmdef
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  wm_definition_id               FOR COLUMN wm_defid        DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0),
  wm_strategy_id                 FOR COLUMN wm_stratid      DECIMAL(10,0) NOT NULL,
  wm_area_type_id                FOR COLUMN wm_atid         DECIMAL(10,0),
  wm_section_type_id             FOR COLUMN wm_sectid       DECIMAL(10,0),
  classification                 FOR COLUMN clsfn           VARCHAR(1) DEFAULT NULL,
  group1                                                    VARCHAR(255) DEFAULT NULL,
  group2                                                    VARCHAR(255) DEFAULT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  priorityrule                   FOR COLUMN ptyrule         CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT wm_definition_key PRIMARY KEY (wm_definition_id),
  CONSTRAINT wm_definition_isactive_check CHECK (isactive in ('Y','N'))
)
;

