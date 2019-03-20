-- Table: hr_concept_category

-- DROP TABLE hr_concept_category;

CREATE TABLE hr_concept_category FOR SYSTEM NAME hrcctcat
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_concept_acct                FOR COLUMN hr_cpta         DECIMAL(10,0),
  hr_concept_category_id         FOR COLUMN hr_cptcid       DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  isdefault                                                 CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_concept_category_pkey PRIMARY KEY (hr_concept_category_id),
  CONSTRAINT hr_concept_category_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_concept_category_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

