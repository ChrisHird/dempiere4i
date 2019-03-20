-- Table: cm_ad

-- DROP TABLE cm_ad;

CREATE TABLE cm_ad
(
  cm_ad_id                                                  DECIMAL(10,0) NOT NULL,
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
  cm_ad_cat_id                   FOR COLUMN cm_adcid        DECIMAL(10,0) NOT NULL,
  cm_media_id                    FOR COLUMN cm_mdid         DECIMAL(10,0) NOT NULL,
  targeturl                                                 VARCHAR(120),
  target_frame                   FOR COLUMN tgt_frame       VARCHAR(20) NOT NULL,
  actualclick                    FOR COLUMN actlclk         DECIMAL(10,0) NOT NULL DEFAULT 0,
  maxclick                                                  DECIMAL(10,0) NOT NULL DEFAULT 0,
  actualimpression               FOR COLUMN actlimp         DECIMAL(10,0) NOT NULL DEFAULT 0,
  maximpression                  FOR COLUMN maximp          DECIMAL(10,0) NOT NULL DEFAULT 0,
  startimpression                FOR COLUMN strimp          DECIMAL(10,0) NOT NULL DEFAULT 0,
  startdate                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  enddate                                                   TIMESTAMP,
  contenthtml                    FOR COLUMN conthtml        VARCHAR(2000),
  isadflag                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  islogged                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_ad_pkey PRIMARY KEY (cm_ad_id),
  CONSTRAINT cm_ad_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_ad_isadflag_check CHECK (isadflag in ('Y','N')),
  CONSTRAINT cm_ad_islogged_check CHECK (islogged in ('Y','N'))
)
;

