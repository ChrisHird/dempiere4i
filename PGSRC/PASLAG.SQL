-- Table: pa_sla_goal

-- DROP TABLE pa_sla_goal;

CREATE TABLE pa_sla_goal FOR SYSTEM NAME paslag
(
  pa_sla_goal_id                 FOR COLUMN pa_slagid       DECIMAL(10,0) NOT NULL,
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
  pa_sla_criteria_id             FOR COLUMN pa_slacid       DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  measuretarget                  FOR COLUMN mtgt            DECFLOAT(16) NOT NULL DEFAULT 0,
  measureactual                  FOR COLUMN msract          DECFLOAT(16) NOT NULL DEFAULT 0,
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_sla_goal_pkey PRIMARY KEY (pa_sla_goal_id),
  CONSTRAINT pa_sla_goal_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pa_sla_goal_processed_check CHECK (processed in ('Y','N'))
)
;

