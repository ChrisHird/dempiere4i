-- Table: ad_window

-- DROP TABLE ad_window;

CREATE TABLE ad_window
(
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0) NOT NULL,
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
  windowtype                                                CHAR(1),
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  processing                                                CHAR(1),
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_color_id                    FOR COLUMN ad_clrid        DECIMAL(10,0),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  winheight                                                 DECIMAL(10,0),
  winwidth                                                  DECIMAL(10,0),
  isbetafunctionality            FOR COLUMN isbtafunc       CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  ad_contextinfo_id              FOR COLUMN ad_ctxid        DECIMAL(10,0),
  CONSTRAINT ad_window_pkey PRIMARY KEY (ad_window_id),
  CONSTRAINT ad_window_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_window_issotrx_check CHECK (issotrx in ('Y','N'))
)
;

