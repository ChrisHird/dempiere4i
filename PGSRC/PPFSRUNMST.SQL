-- Table: pp_forecastrunmaster

-- DROP TABLE pp_forecastrunmaster;

CREATE TABLE pp_forecastrunmaster FOR SYSTEM NAME ppfsrunmst
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_forecastrunmaster_id        FOR COLUMN pp_frmstid      DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pp_forecastrun_id              FOR COLUMN pp_frunid       DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  factoralpha                    FOR COLUMN factora         DECFLOAT(16),
  factorgamma                    FOR COLUMN factorg         DECFLOAT(16),
  factormultiplier               FOR COLUMN factormlt       DECFLOAT(16),
  factorscale                    FOR COLUMN factorscl       DECFLOAT(16),
  pp_forecastdefinitionline_id   FOR COLUMN pp_fdeflid      DECIMAL(10,0),
  factorbeta                                                DECFLOAT(16),
  factoruser                                                DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_forecastrunmaster_key PRIMARY KEY (pp_forecastrunmaster_id),
  CONSTRAINT pp_forecastrunmaster_isactive_check CHECK (isactive in ('Y','N'))
)
;

