-- Table: pp_forecastrun

-- DROP TABLE pp_forecastrun;

CREATE TABLE pp_forecastrun FOR SYSTEM NAME ppfsrun
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_forecastrun_id              FOR COLUMN pp_frunid       DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pp_forecastdefinition_id       FOR COLUMN pp_fdefid       DECIMAL(10,0) NOT NULL,
  pp_perioddefinition_id         FOR COLUMN pp_pddefid      DECIMAL(10,0) NOT NULL,
  pp_calendar_id                 FOR COLUMN pp_calid        DECIMAL(10,0) NOT NULL,
  periodhistory                  FOR COLUMN pdhist          DECIMAL(10,0),
  documentno                                                VARCHAR(30) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  processed                                                 CHAR(1) DEFAULT NULL,
  processing                                                CHAR(1) DEFAULT NULL,
  ref_definitionperiod_id        FOR COLUMN ref_defpd       DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  m_warehousesource_id           FOR COLUMN m_whid          DECIMAL(10,0) NOT NULL,
  pp_forecastrule_id             FOR COLUMN pp_fruleid      DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_forecastrun_key PRIMARY KEY (pp_forecastrun_id),
  CONSTRAINT pp_forecastrun_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_forecastrun_processed_check CHECK (processed in ('Y','N'))
)
;

