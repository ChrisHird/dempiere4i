-- Table: ad_user_substitute

-- DROP TABLE ad_user_substitute;

CREATE TABLE ad_user_substitute FOR SYSTEM NAME adusrsub
(
  ad_user_substitute_id          FOR COLUMN ad_usid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  substitute_id                  FOR COLUMN subid           DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_user_substitute_pkey PRIMARY KEY (ad_user_substitute_id),
  CONSTRAINT ad_user_substitute_isactive_check CHECK (isactive in ('Y','N'))
)
;

