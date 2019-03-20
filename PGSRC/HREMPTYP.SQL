-- Table: hr_employeetype

-- DROP TABLE hr_employeetype;

CREATE TABLE hr_employeetype FOR SYSTEM NAME hremptyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_employeetype_id             FOR COLUMN hr_emptid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(40) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(200) DEFAULT NULL,
  wagelevel                                                 VARCHAR(2) NOT NULL,
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_employeetype_key PRIMARY KEY (hr_employeetype_id),
  CONSTRAINT hr_employeetype_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_employeetype_isactive_check CHECK (isactive in ('Y','N'))
)
;

