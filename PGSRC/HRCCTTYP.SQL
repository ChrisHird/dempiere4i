-- Table: hr_concept_type

-- DROP TABLE hr_concept_type;

CREATE TABLE hr_concept_type FOR SYSTEM NAME hrccttyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_concept_type_id             FOR COLUMN hr_cpttid       DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isdefault                                                 CHAR(1) DEFAULT 'N',
  name                                                      VARCHAR(60),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_concept_type_key PRIMARY KEY (hr_concept_type_id),
  CONSTRAINT hr_concept_type_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_concept_type_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_concept_type_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

