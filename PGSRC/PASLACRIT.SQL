-- Table: pa_sla_criteria

-- DROP TABLE pa_sla_criteria;

CREATE TABLE pa_sla_criteria FOR SYSTEM NAME paslacrit
(
  pa_sla_criteria_id             FOR COLUMN pa_slacid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  ismanual                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  classname                                                 VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_sla_criteria_pkey PRIMARY KEY (pa_sla_criteria_id),
  CONSTRAINT pa_sla_criteria_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pa_sla_criteria_ismanual_check CHECK (ismanual in ('Y','N'))
)
;

