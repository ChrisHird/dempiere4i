-- Table: hr_salarystructure

-- DROP TABLE hr_salarystructure;

CREATE TABLE hr_salarystructure FOR SYSTEM NAME hrsalstr
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_salarystructure_id          FOR COLUMN hr_slstrid     DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(40) NOT NULL,
  validt                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(500) DEFAULT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_salarystructure_key PRIMARY KEY (hr_salarystructure_id),
  CONSTRAINT hr_salarystructure_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_salarystructure_isactive_check CHECK (isactive in ('Y','N'))
)
;

