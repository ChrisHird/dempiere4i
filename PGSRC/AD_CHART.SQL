-- Table: ad_chart

-- DROP TABLE ad_chart;

CREATE TABLE ad_chart
(
  ad_chart_id                    FOR COLUMN ad_chtid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  charttype                                                 VARCHAR(2) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isactive                                                  CHAR(1) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  winheight                                                 DECIMAL(10,0),
  isdisplaylegend                FOR COLUMN isdsplgnd       CHAR(1) NOT NULL DEFAULT 'Y',
  chartorientation               FOR COLUMN chtorn          CHAR(1) NOT NULL DEFAULT 'V',
  istimeseries                   FOR COLUMN istimsrs        CHAR(1) NOT NULL DEFAULT 'N',
  timeunit                                                  CHAR(1) DEFAULT NULL,
  timescope                                                 DECIMAL(10,0),
  domainlabel                    FOR COLUMN domainlbl       VARCHAR(60) DEFAULT NULL,
  rangelabel                                                VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_chart_key PRIMARY KEY (ad_chart_id),
  CONSTRAINT ad_chart_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_chart_isdisplaylegend_check CHECK (isdisplaylegend in ('Y','N')),
  CONSTRAINT ad_chart_istimeseries_check CHECK (istimeseries in ('Y','N'))
)
;

