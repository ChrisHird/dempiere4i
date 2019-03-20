-- Table: hr_employeeexperience

-- DROP TABLE hr_employeeexperience;

CREATE TABLE hr_employeeexperience FOR SYSTEM NAME hrempex
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_employeeexperience_id       FOR COLUMN hr_empeid       DECIMAL(10,0) NOT NULL,
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  designationwherejoined         FOR COLUMN dtnwhjoin       VARCHAR(40),
  designationwhenleft            FOR COLUMN dtnwhl          VARCHAR(40),
  company                                                   VARCHAR(80) NOT NULL,
  datefrom                                                  TIMESTAMP,
  dateto                                                    TIMESTAMP,
  comments                                                  VARCHAR(1024),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_employeeexperience_key PRIMARY KEY (hr_employeeexperience_id),
  CONSTRAINT hr_employeeexperience_isactive_check CHECK (isactive in ('Y','N'))
)
;

