-- Table: ad_workbench

-- DROP TABLE ad_workbench;

CREATE TABLE ad_workbench FOR SYSTEM NAME adwb
(
  ad_workbench_id                FOR COLUMN ad_wid          DECIMAL(10,0) NOT NULL,
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
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0) NOT NULL,
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_color_id                    FOR COLUMN ad_clrid        DECIMAL(10,0),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_workbench_pkey PRIMARY KEY (ad_workbench_id),
  CONSTRAINT ad_workbench_isactive_check CHECK (isactive in ('Y','N'))
)
;

