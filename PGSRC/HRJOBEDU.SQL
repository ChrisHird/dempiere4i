-- Table: hr_jobeducation

-- DROP TABLE hr_jobeducation;

CREATE TABLE hr_jobeducation FOR SYSTEM NAME hrjobedu
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_jobeducation_id             FOR COLUMN hr_jbeduid     DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_jobeducation_key PRIMARY KEY (hr_jobeducation_id),
  CONSTRAINT hr_jobeducation_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_jobeducation_isactive_check CHECK (isactive in ('Y','N'))
)
;

