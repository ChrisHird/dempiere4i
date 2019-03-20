-- Table: ad_rule

-- DROP TABLE ad_rule;

CREATE TABLE ad_rule
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_rule_id                                                DECIMAL(10,0) NOT NULL,
  accesslevel                    FOR COLUMN acclvl          CHAR(1),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  entitytype                                                VARCHAR(40) DEFAULT 'U',
  eventtype                                                 CHAR(1),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  ruletype                                                  CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  script                                                    CLOB,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_rule_pkey PRIMARY KEY (ad_rule_id),
  CONSTRAINT ad_rule_isactive_check CHECK (isactive in ('Y','N'))
)
;

