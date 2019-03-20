-- Table: ad_reportview_col

-- DROP TABLE ad_reportview_col;

CREATE TABLE ad_reportview_col FOR SYSTEM NAME adrptvwc
(
  ad_reportview_col_id           FOR COLUMN ad_rvcid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_reportview_id               FOR COLUMN ad_rptvid       DECIMAL(10,0) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  functioncolumn                 FOR COLUMN fnccol          VARCHAR(60) NOT NULL,
  isgroupfunction                FOR COLUMN isgfunc         CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_reportview_col_pkey PRIMARY KEY (ad_reportview_col_id),
  CONSTRAINT ad_reportview_col_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_reportview_col_isgroupfunction_check CHECK (isgroupfunction in ('Y','N'))
)
;

