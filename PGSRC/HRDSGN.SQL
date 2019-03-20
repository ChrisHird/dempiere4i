-- Table: hr_designation

-- DROP TABLE hr_designation;

CREATE TABLE hr_designation FOR SYSTEM NAME hrdsgn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_designation_id              FOR COLUMN hr_desid        DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(40) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(200) DEFAULT NULL,
  hr_salarystructure_id          FOR COLUMN hr_slstrid     DECIMAL(10,0) NOT NULL,
  hr_employeetype_id             FOR COLUMN hr_emptid       DECIMAL(10,0),
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0),
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_designation_key PRIMARY KEY (hr_designation_id),
  CONSTRAINT hr_designation_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_designation_isactive_check CHECK (isactive in ('Y','N'))
)
;

