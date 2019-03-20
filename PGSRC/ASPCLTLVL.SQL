-- Table: asp_clientlevel

-- DROP TABLE asp_clientlevel;

CREATE TABLE asp_clientlevel FOR SYSTEM NAME aspcltlvl
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL DEFAULT 0,
  asp_clientlevel_id             FOR COLUMN asp_clvlid      DECIMAL(10,0) NOT NULL,
  asp_level_id                   FOR COLUMN asp_lvlid       DECIMAL(10,0) NOT NULL,
  asp_module_id                  FOR COLUMN asp_modid       DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT asp_clientlevel_pkey PRIMARY KEY (asp_clientlevel_id),
  CONSTRAINT asp_clientlevel_isactive_check CHECK (isactive in ('Y','N'))
)
;

