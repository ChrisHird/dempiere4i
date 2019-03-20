-- Table: wm_rule

-- DROP TABLE wm_rule;

CREATE TABLE wm_rule
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  wm_rule_id                                                DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  ad_rule_id                                                DECIMAL(10,0),
  inoutboundtype                 FOR COLUMN iobndtyp        CHAR(1) NOT NULL,
  inoutboundrule                 FOR COLUMN iobndrl         VARCHAR(3) NOT NULL,
  inoutboundclass                FOR COLUMN iobndcls        VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT wm_rule_key PRIMARY KEY (wm_rule_id),
  CONSTRAINT wm_rule_isactive_check CHECK (isactive in ('Y','N'))
)
;

