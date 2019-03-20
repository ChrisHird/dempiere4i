-- Table: c_year

-- DROP TABLE c_year;

CREATE TABLE c_year
(
  c_year_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  fiscalyear                                                VARCHAR(10) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_calendar_id                  FOR COLUMN c_cid           DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_year_pkey PRIMARY KEY (c_year_id),
  CONSTRAINT c_year_isactive_check CHECK (isactive in ('Y','N'))
)
;

