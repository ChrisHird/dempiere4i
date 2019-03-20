-- Table: u_webmenu

-- DROP TABLE u_webmenu;

CREATE TABLE u_webmenu
(
  u_webmenu_id                   FOR COLUMN u_wmnuid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(120) NOT NULL,
  menulink                                                  VARCHAR(510) NOT NULL,
  module                                                    VARCHAR(120) NOT NULL,
  parentmenu_id                  FOR COLUMN prntmid         DECIMAL(10,0),
  hassubmenu                                                CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(200),
  imagelink                                                 VARCHAR(510),
  "position"                                                VARCHAR(10),
  help                                                      VARCHAR(2000),
  category                                                  VARCHAR(120),
  sequence                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT u_webmenu_pkey PRIMARY KEY (u_webmenu_id),
  CONSTRAINT u_webmenu_hassubmenu_check CHECK (hassubmenu in ('Y','N')),
  CONSTRAINT u_webmenu_isactive_check CHECK (isactive in ('Y','N'))
)
;

