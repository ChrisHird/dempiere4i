-- Table: cm_webaccesslog

-- DROP TABLE cm_webaccesslog;

CREATE TABLE cm_webaccesslog FOR SYSTEM NAME cmwal
(
  cm_webaccesslog_id             FOR COLUMN cm_wglogid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  logtype                                                   CHAR(1) NOT NULL,
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0),
  ip_address                                                VARCHAR(20) NOT NULL,
  cm_broadcastserver_id          FOR COLUMN cm_bcsvrid      DECIMAL(10,0),
  requesttype                    FOR COLUMN reqtype         VARCHAR(4) NOT NULL,
  pageurl                                                   VARCHAR(120),
  referrer                                                  VARCHAR(120),
  remote_host                    FOR COLUMN rmthost         VARCHAR(120),
  remote_addr                    FOR COLUMN rmtaddr         VARCHAR(60),
  useragent                                                 VARCHAR(255),
  acceptlanguage                 FOR COLUMN acptlng         VARCHAR(60),
  websession                                                VARCHAR(40),
  hyphen                                                    VARCHAR(20),
  protocol                                                  VARCHAR(20) NOT NULL,
  statuscode                                                DECIMAL(10,0) DEFAULT 0,
  filesize                                                  DECFLOAT(16),
  ad_user_id                                                DECIMAL(10,0),
  cm_media_id                    FOR COLUMN cm_mdid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_webaccesslog_pkey PRIMARY KEY (cm_webaccesslog_id),
  CONSTRAINT cm_webaccesslog_isactive_check CHECK (isactive in ('Y','N'))
)
;

