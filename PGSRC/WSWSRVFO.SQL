-- Table: ws_webservicefieldoutput

-- DROP TABLE ws_webservicefieldoutput;

CREATE TABLE ws_webservicefieldoutput FOR SYSTEM NAME wswsrvfo
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  ws_webservicefieldoutput_id    FOR COLUMN ws_wsfoid       DECIMAL(10,0) NOT NULL,
  ws_webservicetype_id           FOR COLUMN ws_wstid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ws_webservicefieldoutput_key PRIMARY KEY (ws_webservicefieldoutput_id),
  CONSTRAINT ws_webservicefieldoutput_isactive_check CHECK (isactive in ('Y','N'))
)
;

