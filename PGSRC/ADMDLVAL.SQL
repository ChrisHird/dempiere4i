-- Table: ad_modelvalidator

-- DROP TABLE ad_modelvalidator;

CREATE TABLE ad_modelvalidator FOR SYSTEM NAME admdlval
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL DEFAULT 0,
  ad_modelvalidator_id           FOR COLUMN ad_mvalid       DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL DEFAULT 0,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  entitytype                                                VARCHAR(40) NOT NULL,
  modelvalidationclass           FOR COLUMN mvalcls         VARCHAR(255) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_modelvalidator_pkey PRIMARY KEY (ad_modelvalidator_id),
  CONSTRAINT ad_modelvalidator_isactive_check CHECK (isactive in ('Y','N'))
)
;

