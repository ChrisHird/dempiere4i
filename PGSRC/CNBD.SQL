-- Table: c_nonbusinessday

-- DROP TABLE c_nonbusinessday;

CREATE TABLE c_nonbusinessday FOR SYSTEM NAME cnbd
(
  c_nonbusinessday_id            FOR COLUMN c_nbdid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60),
  date1                                                      TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_calendar_id                  FOR COLUMN c_cid           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_nonbusinessday_pkey PRIMARY KEY (c_nonbusinessday_id),
  CONSTRAINT c_nonbusinessday_isactive_check CHECK (isactive in ('Y','N'))
)
;

