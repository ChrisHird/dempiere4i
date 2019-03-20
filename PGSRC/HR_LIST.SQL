-- Table: hr_list

-- DROP TABLE hr_list;

CREATE TABLE hr_list
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_department_id               FOR COLUMN hr_deptid       DECIMAL(10,0),
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  hr_listtype_id                 FOR COLUMN hr_ltypid       DECIMAL(10,0),
  hr_list_id                                                DECIMAL(10,0) NOT NULL,
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL,
  isemployee                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_list_pkey PRIMARY KEY (hr_list_id),
  CONSTRAINT hr_list_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_list_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_list_isemployee_check CHECK (isemployee in ('Y','N'))
)
;

