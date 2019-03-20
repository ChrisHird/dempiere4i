-- Table: hr_department

-- DROP TABLE hr_department;

CREATE TABLE hr_department FOR SYSTEM NAME hrdept
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_department_id               FOR COLUMN hr_deptid       DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  strengthrequired               FOR COLUMN strhreq         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_department_pkey PRIMARY KEY (hr_department_id),
  CONSTRAINT hr_department_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_department_isactive_check CHECK (isactive in ('Y','N'))
)
;

