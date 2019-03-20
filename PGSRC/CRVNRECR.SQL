-- Table: c_revenuerecognition_run

-- DROP TABLE c_revenuerecognition_run;

CREATE TABLE c_revenuerecognition_run FOR SYSTEM NAME crvnrecr
(
  c_revenuerecognition_run_id    FOR COLUMN c_rrrid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_revenuerecognition_plan_id   FOR COLUMN c_rrpid         DECIMAL(10,0) NOT NULL,
  gl_journal_id                  FOR COLUMN gl_jid          DECIMAL(10,0) NOT NULL,
  recognizedamt                  FOR COLUMN recamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_revenuerecognition_run_pkey PRIMARY KEY (c_revenuerecognition_run_id),
  CONSTRAINT c_revenuerecognition_run_isactive_check CHECK (isactive in ('Y','N'))
)
;

