-- Table: m_forecastline

-- DROP TABLE m_forecastline;

CREATE TABLE m_forecastline FOR SYSTEM NAME mfcstln
(
  m_forecastline_id              FOR COLUMN m_flid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_forecast_id                  FOR COLUMN m_fid           DECIMAL(10,0) NOT NULL,
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0),
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  qtycalculated                  FOR COLUMN qtycalc         DECFLOAT(16) NOT NULL DEFAULT 0,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  datepromised                   FOR COLUMN datprm          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  pp_period_id                   FOR COLUMN pp_pdid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_forecastline_pkey PRIMARY KEY (m_forecastline_id),
  CONSTRAINT m_forecastline_isactive_check CHECK (isactive in ('Y','N'))
)
;

