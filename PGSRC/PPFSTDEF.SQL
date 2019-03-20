-- Table: pp_forecastdefinition

-- DROP TABLE pp_forecastdefinition;

CREATE TABLE pp_forecastdefinition FOR SYSTEM NAME ppfstdef
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  pp_forecastdefinition_id       FOR COLUMN pp_fdefid       DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_forecastdefinition_key PRIMARY KEY (pp_forecastdefinition_id),
  CONSTRAINT pp_forecastdefinition_isactive_check CHECK (isactive in ('Y','N'))
)
;

