-- Table: pp_forecastrundetail

-- DROP TABLE pp_forecastrundetail;

CREATE TABLE pp_forecastrundetail FOR SYSTEM NAME ppfsrundt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_forecastrundetail_id        FOR COLUMN pp_frdid        DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pp_period_id                   FOR COLUMN pp_pdid         DECIMAL(10,0) NOT NULL,
  qtycalculated                  FOR COLUMN qtycalc         DECFLOAT(16),
  pp_forecastrun_id              FOR COLUMN pp_frunid       DECIMAL(10,0),
  periodno                                                  DECIMAL(10,0),
  pp_forecastrunmaster_id        FOR COLUMN pp_frmstid      DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_forecastrundetail_key PRIMARY KEY (pp_forecastrundetail_id),
  CONSTRAINT pp_forecastrundetail_isactive_check CHECK (isactive in ('Y','N'))
)
;

