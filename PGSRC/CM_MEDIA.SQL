-- Table: cm_media

-- DROP TABLE cm_media;

CREATE TABLE cm_media
(
  cm_media_id                    FOR COLUMN cm_mdid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  mediatype                                                 character(3),
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0) NOT NULL,
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  contenttext                    FOR COLUMN conttxt         CLOB,
  directdeploy                   FOR COLUMN dctdply         CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_media_pkey PRIMARY KEY (cm_media_id),
  CONSTRAINT cm_media_isactive_check CHECK (isactive in ('Y','N'))
)
;

