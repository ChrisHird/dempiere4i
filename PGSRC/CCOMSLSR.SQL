-- Table: c_commissionsalesrep

-- DROP TABLE c_commissionsalesrep;

CREATE TABLE c_commissionsalesrep FOR SYSTEM NAME ccomslsr
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_commissionsalesrep_id        FOR COLUMN c_comsrid       DECIMAL(10,0) NOT NULL,
  c_commission_id                FOR COLUMN c_comid         DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_commissionsalesrep_key PRIMARY KEY (c_commissionsalesrep_id),
  CONSTRAINT c_commissionsalesrep_isactive_check CHECK (isactive in ('Y','N'))
)
;

