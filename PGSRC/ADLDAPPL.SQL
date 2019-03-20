-- Table: ad_ldapprocessorlog

-- DROP TABLE ad_ldapprocessorlog;

CREATE TABLE ad_ldapprocessorlog FOR SYSTEM NAME adldappl
(
  ad_ldapprocessor_id            FOR COLUMN ad_ldappid      DECIMAL(10,0) NOT NULL,
  ad_ldapprocessorlog_id         FOR COLUMN ad_ldpplid     DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  summary                                                   VARCHAR(2000),
  iserror                                                   CHAR(1) NOT NULL DEFAULT 'N',
  reference                                                 VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  textmsg                                                   VARCHAR(2000),
  binarydata                                                BLOB,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_ldapprocessorlog_pkey PRIMARY KEY (ad_ldapprocessor_id, ad_ldapprocessorlog_id),
  CONSTRAINT ad_ldapprocessorlog_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_ldapprocessorlog_iserror_check CHECK (iserror in ('Y','N'))
)
;

