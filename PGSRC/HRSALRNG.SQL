-- Table: hr_salaryrange

-- DROP TABLE hr_salaryrange;

CREATE TABLE hr_salaryrange FOR SYSTEM NAME hrsalrng
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_salaryrange_id              FOR COLUMN hr_slrngid     DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  maxvalue                                                  DECIMAL(10,0),
  minvalue                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_salaryrange_key PRIMARY KEY (hr_salaryrange_id),
  CONSTRAINT hr_salaryrange_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_salaryrange_isactive_check CHECK (isactive in ('Y','N'))
)
;

