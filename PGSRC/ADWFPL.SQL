-- Table: ad_workflowprocessorlog

-- DROP TABLE ad_workflowprocessorlog;

CREATE TABLE ad_workflowprocessorlog FOR SYSTEM NAME adwfpl
(
  ad_workflowprocessor_id        FOR COLUMN ad_wpid         DECIMAL(10,0) NOT NULL,
  ad_workflowprocessorlog_id     FOR COLUMN ad_wplid        DECIMAL(10,0) NOT NULL,
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
  CONSTRAINT ad_workflowprocessorlog_pkey PRIMARY KEY (ad_workflowprocessor_id, ad_workflowprocessorlog_id)
)
  ;
