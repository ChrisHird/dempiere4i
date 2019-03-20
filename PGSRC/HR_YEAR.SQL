-- Table: hr_year

-- DROP TABLE hr_year;

CREATE TABLE hr_year
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_year_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0) NOT NULL,
  hr_year_id                                                DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  netdays                                                   DECIMAL(10,0) NOT NULL,
  processed                                                 CHAR(1),
  processing                                                CHAR(1),
  qty                                                       DECIMAL(10,0) NOT NULL,
  startdat                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_year_pkey PRIMARY KEY (hr_year_id),
  CONSTRAINT hr_year_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_year_processed_check CHECK (processed in ('Y','N'))
)
;

