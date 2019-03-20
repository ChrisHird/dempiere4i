-- Table: m_forecast

-- DROP TABLE m_forecast;

CREATE TABLE m_forecast
(
  m_forecast_id                  FOR COLUMN m_fid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_calendar_id                  FOR COLUMN c_cid           DECIMAL(10,0),
  c_year_id                                                 DECIMAL(10,0),
  processing                                                CHAR(1),
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0),
  pp_calendar_id                 FOR COLUMN pp_calid        DECIMAL(10,0),
  pp_perioddefinition_id         FOR COLUMN pp_pddefid      DECIMAL(10,0),
  processed                                                 CHAR(1) DEFAULT NULL,
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_projectphase_id              FOR COLUMN c_prjpid        DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_forecast_pkey PRIMARY KEY (m_forecast_id),
  CONSTRAINT m_forecast_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_forecast_isdefault_check CHECK (isdefault in ('Y','N')),
  CONSTRAINT m_forecast_processed_check CHECK (processed in ('Y','N'))
)
;

