-- Table: i_forecast

-- DROP TABLE i_forecast;

CREATE TABLE i_forecast
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  i_forecast_id                  FOR COLUMN i_fcstid        DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  i_errormsg                                                VARCHAR(2000) DEFAULT NULL,
  i_isimported                   FOR COLUMN i_ii            CHAR(1) DEFAULT NULL,
  processed                                                 CHAR(1) DEFAULT NULL,
  processing                                                CHAR(1) DEFAULT NULL,
  orgvalue                                                  VARCHAR(40) DEFAULT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  productvalue                   FOR COLUMN prodval         VARCHAR(40) DEFAULT NULL,
  salesrep_name                  FOR COLUMN srname          VARCHAR(60) DEFAULT NULL,
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  datepromised                   FOR COLUMN datprm          TIMESTAMP,
  warehousevalue                 FOR COLUMN whseval         VARCHAR(40) DEFAULT NULL,
  qty                                                       DECFLOAT(16),
  m_forecast_id                  FOR COLUMN m_fid           DECIMAL(10,0),
  m_forecastline_id              FOR COLUMN m_flid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_forecast_key PRIMARY KEY (i_forecast_id),
  CONSTRAINT i_forecast_i_isimported_check CHECK (i_isimported in ('Y','N')),
  CONSTRAINT i_forecast_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT i_forecast_processed_check CHECK (processed in ('Y','N'))
)
;

