-- Table: hr_job

-- DROP TABLE hr_job;

CREATE TABLE hr_job
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_department_id               FOR COLUMN hr_deptid       DECIMAL(10,0),
  hr_job_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  isparent                                                  CHAR(1),
  jobcant                                                   DECIMAL(10,0),
  next_job_id                    FOR COLUMN next_jid        DECIMAL(10,0),
  supervisor_id                  FOR COLUMN supid           DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_job_pkey PRIMARY KEY (hr_job_id),
  CONSTRAINT hr_job_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_job_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_job_isparent_check CHECK (isparent in ('Y','N'))
)
;

