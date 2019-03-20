-- Table: imp_processorlog

-- DROP TABLE imp_processorlog;

CREATE TABLE imp_processorlog FOR SYSTEM NAME impprcl
(
  imp_processorlog_id            FOR COLUMN imp_plid        DECIMAL(10,0) NOT NULL,
  imp_processor_id               FOR COLUMN imp_pid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  binarydata                                                BLOB,
  iserror                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  summary                                                   VARCHAR(2000),
  textmsg                                                   VARCHAR(2000),
  reference                                                 VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT imp_processorlog_pkey PRIMARY KEY (imp_processorlog_id),
  CONSTRAINT imp_processorlog_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT imp_processorlog_iserror_check CHECK (iserror in ('Y','N'))
)
;

