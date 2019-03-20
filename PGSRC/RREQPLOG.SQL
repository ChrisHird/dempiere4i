-- Table: r_requestprocessorlog

-- DROP TABLE r_requestprocessorlog;

CREATE TABLE r_requestprocessorlog FOR SYSTEM NAME rreqplog
(
  r_requestprocessor_id          FOR COLUMN r_rpid          DECIMAL(10,0) NOT NULL,
  r_requestprocessorlog_id       FOR COLUMN r_rplid         DECIMAL(10,0) NOT NULL,
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
  CONSTRAINT r_requestprocessorlog_pkey PRIMARY KEY (r_requestprocessor_id, r_requestprocessorlog_id)
)
  ;
