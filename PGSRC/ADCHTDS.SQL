-- Table: ad_chartdatasource

-- DROP TABLE ad_chartdatasource;

CREATE TABLE ad_chartdatasource FOR SYSTEM NAME adchtds
(
  ad_chartdatasource_id          FOR COLUMN ad_chtdsid      DECIMAL(10,0) NOT NULL,
  ad_chart_id                    FOR COLUMN ad_chtid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  categorycolumn                 FOR COLUMN catcol          VARCHAR(60),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  datecolumn                                                VARCHAR(60) DEFAULT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  fromclause                                                VARCHAR(2000) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  keycolumn                                                 VARCHAR(60),
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  valuecolumn                    FOR COLUMN valuecol        VARCHAR(60) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000) NOT NULL DEFAULT 'WHERE ...',
  timeoffset                                                DECIMAL(10,0),
  seriescolumn                   FOR COLUMN srscol          VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_chartdatasource_key PRIMARY KEY (ad_chartdatasource_id),
  CONSTRAINT ad_chartdatasource_isactive_check CHECK (isactive in ('Y','N'))
)
;

