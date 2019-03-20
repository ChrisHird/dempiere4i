-- Table: ad_entitytype

-- DROP TABLE ad_entitytype;

CREATE TABLE ad_entitytype FOR SYSTEM NAME adentyp
(
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_entitytype_id               FOR COLUMN ad_enttid       DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  version                                                   VARCHAR(20),
  modelpackage                   FOR COLUMN mbpkg           VARCHAR(255),
  classpath                                                 VARCHAR(255),
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_entitytype_pkey PRIMARY KEY (entitytype),
  CONSTRAINT ad_entitytype_isactive_check CHECK (isactive in ('Y','N'))
)
;

