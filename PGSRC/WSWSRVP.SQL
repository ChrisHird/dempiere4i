-- Table: ws_webservice_para

-- DROP TABLE ws_webservice_para;

CREATE TABLE ws_webservice_para FOR SYSTEM NAME wswsrvp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  constantvalue                  FOR COLUMN cnstval         VARCHAR(60),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  parametername                  FOR COLUMN parmnme         VARCHAR(60),
  parametertype                  FOR COLUMN parmtyp         CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  ws_webservice_para_id          FOR COLUMN ws_wspid        DECIMAL(10,0) NOT NULL,
  ws_webservicetype_id           FOR COLUMN ws_wstid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ws_webservice_para_key PRIMARY KEY (ws_webservice_para_id),
  CONSTRAINT ws_webservice_para_isactive_check CHECK (isactive in ('Y','N'))
)
;

