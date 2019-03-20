-- Table: ad_tokendefinition

-- DROP TABLE ad_tokendefinition;

CREATE TABLE ad_tokendefinition FOR SYSTEM NAME adtkndfn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_tokendefinition_id          FOR COLUMN ad_tkndid       DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(255) NOT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  tokentype                                                 VARCHAR(3) NOT NULL,
  classname                                                 VARCHAR(255) NOT NULL,
  CONSTRAINT ad_tokendefinition_key PRIMARY KEY (ad_tokendefinition_id),
  CONSTRAINT ad_tokendefinition_isactive_check CHECK (isactive in ('Y','N'))
)
;

