-- Table: hr_period

-- DROP TABLE hr_period;

CREATE TABLE hr_period
(
  name                                                      VARCHAR(40) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0) NOT NULL,
  c_year_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dateacc                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  enddate                                                   TIMESTAMP,
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0) NOT NULL,
  hr_period_id                   FOR COLUMN hr_pdid         DECIMAL(10,0) NOT NULL,
  hr_year_id                                                DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL,
  periodaction                   FOR COLUMN peract          VARCHAR(1),
  periodno                                                  DECIMAL(10,0) NOT NULL,
  periodstatus                   FOR COLUMN persts          VARCHAR(1),
  processed                                                 CHAR(1),
  processing                                                VARCHAR(1),
  startdat                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_period_pkey PRIMARY KEY (hr_period_id),
  CONSTRAINT hr_period_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_period_processed_check CHECK (processed in ('Y','N'))
)
;

