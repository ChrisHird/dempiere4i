-- Table: c_userremuneration

-- DROP TABLE c_userremuneration;

CREATE TABLE c_userremuneration FOR SYSTEM NAME cusrrmn
(
  c_userremuneration_id          FOR COLUMN c_usrrmnid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  c_remuneration_id              FOR COLUMN c_rmnid         DECIMAL(10,0) NOT NULL,
  validfrom                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validto                                                   TIMESTAMP,
  grossramt                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  grossrcost                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  overtimeamt                    FOR COLUMN otamt           DECFLOAT(16) NOT NULL DEFAULT 0,
  overtimecost                   FOR COLUMN otimecst        DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_userremuneration_pkey PRIMARY KEY (c_userremuneration_id),
  CONSTRAINT c_userremuneration_isactive_check CHECK (isactive in ('Y','N'))
)
;

