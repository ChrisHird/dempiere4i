-- Table: c_remuneration

-- DROP TABLE c_remuneration;

CREATE TABLE c_remuneration FOR SYSTEM NAME crmnn
(
  c_remuneration_id              FOR COLUMN c_rmnid         DECIMAL(10,0) NOT NULL,
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
  remunerationtype               FOR COLUMN rmntype         CHAR(1) NOT NULL,
  standardhours                  FOR COLUMN stdhours        DECIMAL(10,0) NOT NULL DEFAULT 0,
  grossramt                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  grossrcost                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  overtimeamt                    FOR COLUMN otamt           DECFLOAT(16) NOT NULL DEFAULT 0,
  overtimecost                   FOR COLUMN otimecst        DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_remuneration_pkey PRIMARY KEY (c_remuneration_id),
  CONSTRAINT c_remuneration_isactive_check CHECK (isactive in ('Y','N'))
)
;

