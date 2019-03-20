-- Table: c_projectprocessorlog

-- DROP TABLE c_projectprocessorlog;

CREATE TABLE c_projectprocessorlog FOR SYSTEM NAME cprjprcl
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projectprocessorlog_id       FOR COLUMN c_prjplid       DECIMAL(10,0) NOT NULL,
  binarydata                                                BLOB,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  iserror                                                   CHAR(1) NOT NULL,
  reference                                                 VARCHAR(60) DEFAULT NULL,
  summary                                                   VARCHAR(2000) DEFAULT NULL,
  textmsg                                                   VARCHAR(2000) DEFAULT NULL,
  c_projectprocessor_id          FOR COLUMN c_prjprcid      DECIMAL(10,0) NOT NULL,
  CONSTRAINT c_projectprocessorlog_key PRIMARY KEY (c_projectprocessorlog_id),
  CONSTRAINT c_projectprocessorlog_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_projectprocessorlog_iserror_check CHECK (iserror in ('Y','N'))
)
;

