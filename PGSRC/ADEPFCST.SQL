-- Table: a_depreciation_forecast

-- DROP TABLE a_depreciation_forecast;

CREATE TABLE a_depreciation_forecast FOR SYSTEM NAME adepfcst
(
  a_depreciation_forecast_id     FOR COLUMN a_depfctid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  a_end_asset_id                 FOR COLUMN a_endaid        DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  datedoc                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  postingtype                    FOR COLUMN posttyp         CHAR(1) NOT NULL,
  processing                                                CHAR(1),
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  processed                                                 CHAR(1),
  isactive                                                  CHAR(1) NOT NULL,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  a_start_asset_id               FOR COLUMN a_straid        DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_forecast_pkey PRIMARY KEY (a_depreciation_forecast_id),
  CONSTRAINT a_depreciation_forecast_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_depreciation_forecast_processed_check CHECK (processed in ('Y','N'))
)
;

