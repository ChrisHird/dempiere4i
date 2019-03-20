-- Table: hr_grade

-- DROP TABLE hr_grade;

CREATE TABLE hr_grade
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_grade_id                    FOR COLUMN hr_gdid         DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(40) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(200) DEFAULT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_grade_key PRIMARY KEY (hr_grade_id),
  CONSTRAINT hr_grade_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_grade_isactive_check CHECK (isactive in ('Y','N'))
)
;

