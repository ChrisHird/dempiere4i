-- Table: hr_education

-- DROP TABLE hr_education;

CREATE TABLE hr_education FOR SYSTEM NAME hredu
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_education_id                FOR COLUMN hr_eduid        DECIMAL(10,0) NOT NULL,
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  yearofpassing                  FOR COLUMN yropass         VARCHAR(5) NOT NULL,
  hr_degree_id                   FOR COLUMN hr_degid        DECIMAL(10,0) NOT NULL,
  duration                                                  VARCHAR(40),
  schoolcollege                  FOR COLUMN schclg          VARCHAR(40),
  schoolcollegeaddress           FOR COLUMN schclgadr       VARCHAR(200),
  comments                                                  VARCHAR(1024),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_education_key PRIMARY KEY (hr_education_id),
  CONSTRAINT hr_education_isactive_check CHECK (isactive in ('Y','N'))
)
;

