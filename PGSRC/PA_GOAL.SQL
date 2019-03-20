-- Table: pa_goal

-- DROP TABLE pa_goal;

CREATE TABLE pa_goal
(
  pa_goal_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  note                                                      VARCHAR(2000),
  ad_user_id                                                DECIMAL(10,0),
  pa_colorschema_id              FOR COLUMN pa_cscmid       DECIMAL(10,0) NOT NULL,
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  pa_goalparent_id               FOR COLUMN pa_glpid        DECIMAL(10,0),
  pa_measure_id                  FOR COLUMN pa_mid          DECIMAL(10,0),
  relativeweight                 FOR COLUMN relwgt          DECFLOAT(16),
  measuretarget                  FOR COLUMN mtgt            DECFLOAT(16) NOT NULL DEFAULT 0,
  measurescope                   FOR COLUMN mscope          CHAR(1) NOT NULL,
  measuredisplay                 FOR COLUMN mdisplay        CHAR(1),
  datefrom                                                  TIMESTAMP,
  dateto                                                    TIMESTAMP,
  measureactual                  FOR COLUMN msract          DECFLOAT(16) DEFAULT 0,
  goalperformance                FOR COLUMN gperf           DECFLOAT(16),
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  ad_role_id                                                DECIMAL(10,0),
  charttype                                                 VARCHAR(2) NOT NULL DEFAULT 'BC',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_goal_pkey PRIMARY KEY (pa_goal_id),
  CONSTRAINT pa_goal_isactive_check CHECK (isactive in ('Y','N'))
)
;

