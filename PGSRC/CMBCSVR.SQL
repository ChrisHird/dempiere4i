-- Table: cm_broadcastserver

-- DROP TABLE cm_broadcastserver;

CREATE TABLE cm_broadcastserver FOR SYSTEM NAME cmbcsvr
(
  cm_broadcastserver_id          FOR COLUMN cm_bcsvrid      DECIMAL(10,0) NOT NULL,
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
  ip_address                                                VARCHAR(20) NOT NULL,
  lastsynchronized               FOR COLUMN lstresync       TIMESTAMP,
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_broadcastserver_pkey PRIMARY KEY (cm_broadcastserver_id),
  CONSTRAINT cm_broadcastserver_isactive_check CHECK (isactive in ('Y','N'))
)
;

