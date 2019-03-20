-- Table: hr_jobtype

-- DROP TABLE hr_jobtype;

CREATE TABLE hr_jobtype
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_jobtype_id                  FOR COLUMN hr_jobtid       DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_jobtype_key PRIMARY KEY (hr_jobtype_id),
  CONSTRAINT hr_jobtype_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_jobtype_isactive_check CHECK (isactive in ('Y','N'))
)
;

