-- Table: cm_accessmedia

-- DROP TABLE cm_accessmedia;

CREATE TABLE cm_accessmedia FOR SYSTEM NAME cmamd
(
  cm_media_id                    FOR COLUMN cm_mdid         DECIMAL(10,0) NOT NULL,
  cm_accessprofile_id            FOR COLUMN cm_aprfid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_accessmedia_pkey PRIMARY KEY (cm_media_id, cm_accessprofile_id),
  CONSTRAINT cm_accessmedia_isactive_check CHECK (isactive in ('Y','N'))
)
;

