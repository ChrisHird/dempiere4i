-- Table: cm_newschannel

-- DROP TABLE cm_newschannel;

CREATE TABLE cm_newschannel FOR SYSTEM NAME cmnchnl
(
  cm_newschannel_id              FOR COLUMN cm_ncid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(2000) NOT NULL,
  help                                                      VARCHAR(2000),
  ad_language                    FOR COLUMN ad_lng          VARCHAR(40),
  cm_webproject_id               FOR COLUMN cm_wprjid       DECIMAL(10,0) NOT NULL,
  link                                                      VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_newschannel_pkey PRIMARY KEY (cm_newschannel_id),
  CONSTRAINT cm_newschannel_isactive_check CHECK (isactive in ('Y','N'))
)
;

