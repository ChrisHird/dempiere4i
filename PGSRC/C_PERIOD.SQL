-- Table: c_period

-- DROP TABLE c_period;

CREATE TABLE c_period
(
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  periodno                                                  DECIMAL(10,0) NOT NULL,
  c_year_id                                                 DECIMAL(10,0) NOT NULL,
  startdate                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  enddate                                                   TIMESTAMP,
  periodtype                                                CHAR(1) NOT NULL,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_period_pkey PRIMARY KEY (c_period_id),
  CONSTRAINT c_period_isactive_check CHECK (isactive in ('Y','N'))
)
;

