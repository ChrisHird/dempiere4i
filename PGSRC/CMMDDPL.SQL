-- Table: cm_mediadeploy

-- DROP TABLE cm_mediadeploy;

CREATE TABLE cm_mediadeploy FOR SYSTEM NAME cmmddpl
(
  cm_mediadeploy_id              FOR COLUMN cm_mddplid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  cm_media_server_id             FOR COLUMN cm_mdsrvid      DECIMAL(10,0) NOT NULL,
  cm_media_id                    FOR COLUMN cm_mdid         DECIMAL(10,0) NOT NULL,
  isdeployed                                                CHAR(1) NOT NULL DEFAULT 'N',
  lastsynchronized               FOR COLUMN lstresync       TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_mediadeploy_pkey PRIMARY KEY (cm_mediadeploy_id),
  CONSTRAINT cm_mediadeploy_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_mediadeploy_isdeployed_check CHECK (isdeployed in ('Y','N'))
)
;

