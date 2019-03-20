-- Table: c_jobcategory

-- DROP TABLE c_jobcategory;

CREATE TABLE c_jobcategory FOR SYSTEM NAME cjobcat
(
  c_jobcategory_id               FOR COLUMN c_jobcid        DECIMAL(10,0) NOT NULL,
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
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_jobcategory_pkey PRIMARY KEY (c_jobcategory_id),
  CONSTRAINT c_jobcategory_isactive_check CHECK (isactive in ('Y','N'))
)
;

