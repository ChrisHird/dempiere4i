-- Table: cm_accessprofile

-- DROP TABLE cm_accessprofile;

CREATE TABLE cm_accessprofile FOR SYSTEM NAME cmaprf
(
  cm_accessprofile_id            FOR COLUMN cm_aprfid       DECIMAL(10,0) NOT NULL,
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
  isexclude                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_accessprofile_pkey PRIMARY KEY (cm_accessprofile_id),
  CONSTRAINT cm_accessprofile_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_accessprofile_isexclude_check CHECK (isexclude in ('Y','N'))
)
;

