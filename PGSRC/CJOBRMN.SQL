-- Table: c_jobremuneration

-- DROP TABLE c_jobremuneration;

CREATE TABLE c_jobremuneration FOR SYSTEM NAME cjobrmn
(
  c_jobremuneration_id           FOR COLUMN c_jobrid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_job_id                                                  DECIMAL(10,0) NOT NULL,
  c_remuneration_id              FOR COLUMN c_rmnid         DECIMAL(10,0) NOT NULL,
  validfrom                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validto                                                   TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_jobremuneration_pkey PRIMARY KEY (c_jobremuneration_id),
  CONSTRAINT c_jobremuneration_isactive_check CHECK (isactive in ('Y','N'))
)
;

