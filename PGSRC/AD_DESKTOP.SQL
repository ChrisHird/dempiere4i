-- Table: ad_desktop

-- DROP TABLE ad_desktop;

CREATE TABLE ad_desktop
(
  ad_desktop_id                  FOR COLUMN ad_did          DECIMAL(10,0) NOT NULL,
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
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_color_id                    FOR COLUMN ad_clrid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_desktop_pkey PRIMARY KEY (ad_desktop_id),
  CONSTRAINT ad_desktop_isactive_check CHECK (isactive in ('Y','N'))
)
;

