-- Table: ad_alertprocessorlog

-- DROP TABLE ad_alertprocessorlog;

CREATE TABLE ad_alertprocessorlog FOR SYSTEM NAME adalrtpl
(
  ad_alertprocessor_id           FOR COLUMN ad_apid         DECIMAL(10,0) NOT NULL,
  ad_alertprocessorlog_id        FOR COLUMN ad_aplid        DECIMAL(10,0) NOT NULL,
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
  CONSTRAINT ad_alertprocessorlog_pkey PRIMARY KEY (ad_alertprocessor_id, ad_alertprocessorlog_id),
  CONSTRAINT ad_alertprocessorlog_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_alertprocessorlog_iserror_check CHECK (iserror in ('Y','N'))
)
;

