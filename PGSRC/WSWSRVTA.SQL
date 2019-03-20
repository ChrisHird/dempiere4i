-- Table: ws_webservicetypeaccess

-- DROP TABLE ws_webservicetypeaccess;

CREATE TABLE ws_webservicetypeaccess FOR SYSTEM NAME wswsrvta
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isreadwrite                    FOR COLUMN isrw            CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ws_webservicetype_id           FOR COLUMN ws_wstid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ws_webservicetypeaccess_key PRIMARY KEY (ad_role_id, ws_webservicetype_id),
  CONSTRAINT ws_webservicetypeaccess_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ws_webservicetypeaccess_isreadwrite_check CHECK (isreadwrite in ('Y','N'))
)
;

