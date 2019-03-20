-- Table: i_hr_movement

-- DROP TABLE i_hr_movement;

CREATE TABLE i_hr_movement FOR SYSTEM NAME ihrmvt
(
  i_hr_movement_id               FOR COLUMN i_hrmid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  amount                                                    DECFLOAT(16),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  created                                                   TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  hr_concept_id                  FOR COLUMN he_cptid        DECIMAL(10,0),
  hr_process_id                  FOR COLUMN hr_prcid        DECIMAL(10,0),
  isactive                                                  CHAR(1),
  processed                                                 CHAR(1) DEFAULT 'N',
  qty                                                       DECFLOAT(16),
  servicedate                    FOR COLUMN srvdat          TIMESTAMP,
  textmsg                                                   VARCHAR(255),
  updated                                                   TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  validfrom                                                 TIMESTAMP,
  i_isimported                   FOR COLUMN i_ii            VARCHAR(1) NOT NULL DEFAULT 'N',
  i_errormsg                                                VARCHAR(2000),
  processing                                                CHAR(1),
  bpartner_value                 FOR COLUMN bpval           VARCHAR(40),
  conceptvalue                   FOR COLUMN ccptval         VARCHAR(40),
  hr_movement_id                 FOR COLUMN hr_movid        DECIMAL(10,0),
  processname                    FOR COLUMN prcname         VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  validto                                                   TIMESTAMP,
  referenceno                    FOR COLUMN refnum          VARCHAR(40) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_hr_movement_pkey PRIMARY KEY (i_hr_movement_id),
  CONSTRAINT i_hr_movement_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT i_hr_movement_processed_check CHECK (processed in ('Y','N'))
)
;

