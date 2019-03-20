-- Table: c_acctprocessorlog

-- DROP TABLE c_acctprocessorlog;

CREATE TABLE c_acctprocessorlog FOR SYSTEM NAME caccpl
(
  c_acctprocessor_id             FOR COLUMN c_apid          DECIMAL(10,0) NOT NULL,
  c_acctprocessorlog_id          FOR COLUMN c_aplid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  iserror                                                   CHAR(1) NOT NULL DEFAULT 'N',
  summary                                                   VARCHAR(2000),
  reference                                                 VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  textmsg                                                   VARCHAR(2000),
  binarydata                                                BLOB,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_acctprocessorlog_pkey PRIMARY KEY (c_acctprocessor_id, c_acctprocessorlog_id)
)
  ;
