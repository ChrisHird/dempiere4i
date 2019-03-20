-- Table: ad_modification

-- DROP TABLE ad_modification;

CREATE TABLE ad_modification FOR SYSTEM NAME admod
(
  ad_modification_id             FOR COLUMN ad_modid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  version                                                   VARCHAR(20),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_modification_pkey PRIMARY KEY (ad_modification_id),
  CONSTRAINT ad_modification_isactive_check CHECK (isactive in ('Y','N'))
)
;

