-- Table: pp_forecastrunline

-- DROP TABLE pp_forecastrunline;

CREATE TABLE pp_forecastrunline FOR SYSTEM NAME ppfsrunln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_forecastrunline_id          FOR COLUMN pp_frlnid       DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_saleshistory_id              FOR COLUMN c_slshid        DECIMAL(10,0) NOT NULL,
  pp_period_id                   FOR COLUMN pp_pdid         DECIMAL(10,0),
  pp_forecastrundetail_id        FOR COLUMN pp_frdid        DECIMAL(10,0),
  pp_forecastrun_id              FOR COLUMN pp_frunid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_forecastrunline_key PRIMARY KEY (pp_forecastrunline_id),
  CONSTRAINT pp_forecastrunline_isactive_check CHECK (isactive in ('Y','N'))
)
;

