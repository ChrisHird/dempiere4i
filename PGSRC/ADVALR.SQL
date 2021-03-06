-- Table: ad_val_rule

-- DROP TABLE ad_val_rule;

CREATE TABLE ad_val_rule FOR SYSTEM NAME advalr
(
  ad_val_rule_id                 FOR COLUMN ad_vrid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  type                                                      CHAR(1),
  code                                                      VARCHAR(2000),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_val_rule_pkey PRIMARY KEY (ad_val_rule_id),
  CONSTRAINT ad_val_rule_isactive_check CHECK (isactive in ('Y','N'))
)
;

