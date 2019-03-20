-- Table: c_task

-- DROP TABLE c_task;

CREATE TABLE c_task
(
  c_task_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  c_phase_id                                                DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  standardqty                    FOR COLUMN stdqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  r_standardrequesttype_id       FOR COLUMN r_stdrtid       DECIMAL(10,0),
  ismilestone                    FOR COLUMN ismlstone       CHAR(1) DEFAULT NULL,
  durationunit                   FOR COLUMN durunit         CHAR(1) DEFAULT 'D',
  durationestimated              FOR COLUMN durest          DECFLOAT(16),
  priorityrule                   FOR COLUMN ptyrule         CHAR(1) DEFAULT NULL,
  isindefinite                   FOR COLUMN isindef         CHAR(1) DEFAULT 'N',
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) DEFAULT NULL,
  isrecurrent                    FOR COLUMN isrecur         CHAR(1) DEFAULT 'N',
  frequency                                                 DECIMAL(10,0),
  runsmax                                                   DECIMAL(10,0),
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  CONSTRAINT c_task_pkey PRIMARY KEY (c_task_id),
  CONSTRAINT c_task_isindefinite_check CHECK (isindefinite in ('Y','N')),
  CONSTRAINT c_task_ismilestone_check CHECK (ismilestone in ('Y','N')),
  CONSTRAINT c_task_isrecurrent_check CHECK (isrecurrent in ('Y','N'))
)
;

