-- Table: pp_forecastrule

-- DROP TABLE pp_forecastrule;

CREATE TABLE pp_forecastrule FOR SYSTEM NAME ppfsr
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_forecastrule_id             FOR COLUMN pp_fruleid      DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_rule_id                                                DECIMAL(10,0),
  calculationclass               FOR COLUMN calccls         VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_forecastrule_key PRIMARY KEY (pp_forecastrule_id),
  CONSTRAINT pp_forecastrule_isactive_check CHECK (isactive in ('Y','N'))
)
;

