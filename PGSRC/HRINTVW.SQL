-- Table: hr_interview

-- DROP TABLE hr_interview;

CREATE TABLE hr_interview FOR SYSTEM NAME hrintvw
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_interview_id                FOR COLUMN hr_itwid        DECIMAL(10,0) NOT NULL,
  hr_jobapplication_id           FOR COLUMN hr_jobapid      DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  bpname                                                    VARCHAR(50) DEFAULT NULL,
  startdat                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  feedback                                                  VARCHAR(2000) DEFAULT NULL,
  isselected                                                CHAR(1) DEFAULT NULL,
  isinterviewover                FOR COLUMN isiviewo        CHAR(1) DEFAULT NULL,
  seqno                                                     DECIMAL(10,0),
  rating                                                    VARCHAR(50) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_interview_key PRIMARY KEY (hr_interview_id),
  CONSTRAINT hr_interview_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_interview_isinterviewover_check CHECK (isinterviewover in ('Y','N')),
  CONSTRAINT hr_interview_isselected_check CHECK (isselected in ('Y','N'))
)
;

