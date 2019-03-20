-- Table: pp_period

-- DROP TABLE pp_period;

CREATE TABLE pp_period
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_period_id                   FOR COLUMN pp_pdid         DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pp_perioddefinition_id         FOR COLUMN pp_pddefid      DECIMAL(10,0),
  periodno                                                  DECIMAL(10,0),
  startdate                                                 TIMESTAMP,
  enddate                                                   TIMESTAMP,
  name                                                      VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_period_key PRIMARY KEY (pp_period_id),
  CONSTRAINT pp_period_isactive_check CHECK (isactive in ('Y','N'))
)
;

