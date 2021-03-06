-- Table: c_jobassignment

-- DROP TABLE c_jobassignment;

CREATE TABLE c_jobassignment FOR SYSTEM NAME cjobasg
(
  c_jobassignment_id             FOR COLUMN c_jobaid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  c_job_id                                                  DECIMAL(10,0) NOT NULL,
  validfrom                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validto                                                   TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_jobassignment_pkey PRIMARY KEY (c_jobassignment_id),
  CONSTRAINT c_jobassignment_isactive_check CHECK (isactive in ('Y','N'))
)
;

