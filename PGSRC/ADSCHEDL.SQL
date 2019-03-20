-- Table: ad_schedulerlog

-- DROP TABLE ad_schedulerlog;

CREATE TABLE ad_schedulerlog FOR SYSTEM NAME adschedl
(
  ad_scheduler_id                FOR COLUMN ad_scdid        DECIMAL(10,0) NOT NULL,
  ad_schedulerlog_id             FOR COLUMN ad_slid         DECIMAL(10,0) NOT NULL,
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
  CONSTRAINT ad_schedulerlog_pkey PRIMARY KEY (ad_scheduler_id, ad_schedulerlog_id)
)
  ;
