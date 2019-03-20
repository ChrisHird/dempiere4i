-- Table: hr_employeeweeklyoff

-- DROP TABLE hr_employeeweeklyoff;

CREATE TABLE hr_employeeweeklyoff FOR SYSTEM NAME hrempwko
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_employeeweeklyoff_id        FOR COLUMN hr_empwoid      DECIMAL(10,0) NOT NULL,
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(60),
  onsunday                                                  CHAR(1),
  onmonday                                                  CHAR(1),
  ontuesday                                                 CHAR(1),
  onwednesday                    FOR COLUMN onwed           CHAR(1),
  onthursday                                                CHAR(1),
  onfriday                                                  CHAR(1),
  onsaturday                                                CHAR(1),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_employeeweeklyoff_key PRIMARY KEY (hr_employeeweeklyoff_id),
  CONSTRAINT hr_employeeweeklyoff_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_employeeweeklyoff_onfriday_check CHECK (onfriday in ('Y','N')),
  CONSTRAINT hr_employeeweeklyoff_onmonday_check CHECK (onmonday in ('Y','N')),
  CONSTRAINT hr_employeeweeklyoff_onsaturday_check CHECK (onsaturday in ('Y','N')),
  CONSTRAINT hr_employeeweeklyoff_onsunday_check CHECK (onsunday in ('Y','N')),
  CONSTRAINT hr_employeeweeklyoff_onthursday_check CHECK (onthursday in ('Y','N')),
  CONSTRAINT hr_employeeweeklyoff_ontuesday_check CHECK (ontuesday in ('Y','N')),
  CONSTRAINT hr_employeeweeklyoff_onwednesday_check CHECK (onwednesday in ('Y','N'))
)
;

