-- Table: cm_media_server

-- DROP TABLE cm_media_server;

CREATE TABLE cm_media_server FOR SYSTEM NAME cmmdsrv
(
  cm_media_server_id             FOR COLUMN cm_mdsrvid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0) NOT NULL,
  ispassive                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  url                                                       VARCHAR(120),
  ip_address                                                VARCHAR(20),
  username                                                  VARCHAR(40),
  password                                                  VARCHAR(40),
  folder                                                    VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_media_server_pkey PRIMARY KEY (cm_media_server_id),
  CONSTRAINT cm_media_server_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_media_server_ispassive_check CHECK (ispassive in ('Y','N'))
)
;

