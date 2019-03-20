-- Table: pa_goalrestriction

-- DROP TABLE pa_goalrestriction;

CREATE TABLE pa_goalrestriction FOR SYSTEM NAME pagrst
(
  pa_goalrestriction_id          FOR COLUMN pa_glrsid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  goalrestrictiontype            FOR COLUMN glresttyp       CHAR(1) NOT NULL,
  pa_goal_id                                                DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  org_id                                                    DECIMAL(10,0),
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0),
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_goalrestriction_pkey PRIMARY KEY (pa_goalrestriction_id),
  CONSTRAINT pa_goalrestriction_isactive_check CHECK (isactive in ('Y','N'))
)
;

