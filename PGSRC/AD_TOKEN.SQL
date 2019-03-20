-- Table: ad_token

-- DROP TABLE ad_token;

CREATE TABLE ad_token
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_token_id                    FOR COLUMN ad_tknid        DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  expiredate                                                 TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  tokenvalue                                                VARCHAR(255) DEFAULT NULL,
  ad_tokendefinition_id          FOR COLUMN ad_tkndid       DECIMAL(10,0) NOT NULL,
  CONSTRAINT ad_token_key PRIMARY KEY (ad_token_id),
  CONSTRAINT ad_token_isactive_check CHECK (isactive in ('Y','N'))
)
;

