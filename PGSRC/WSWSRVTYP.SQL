-- Table: ws_webservicetype

-- DROP TABLE ws_webservicetype;

CREATE TABLE ws_webservicetype FOR SYSTEM NAME wswsrvtyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  ws_webservice_id               FOR COLUMN ws_wsid         DECIMAL(10,0) NOT NULL,
  ws_webservicemethod_id         FOR COLUMN ws_wsmid        DECIMAL(10,0) NOT NULL,
  ws_webservicetype_id           FOR COLUMN ws_wstid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ws_webservicetype_key PRIMARY KEY (ws_webservicetype_id),
  CONSTRAINT ws_webservicetype_isactive_check CHECK (isactive in ('Y','N'))
)
;

