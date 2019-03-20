-- Table: u_rolemenu

-- DROP TABLE u_rolemenu;

CREATE TABLE u_rolemenu
(
  u_rolemenu_id                  FOR COLUMN u_rmnuid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECFLOAT(16) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECFLOAT(16) NOT NULL,
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  u_webmenu_id                   FOR COLUMN u_wmnuid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT u_rolemenu_pkey PRIMARY KEY (u_rolemenu_id),
  CONSTRAINT u_rolemenu_isactive_check CHECK (isactive in ('Y','N'))
)
;

