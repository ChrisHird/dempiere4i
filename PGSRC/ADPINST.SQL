-- Table: ad_pinstance

-- DROP TABLE ad_pinstance;

CREATE TABLE ad_pinstance FOR SYSTEM NAME adpinst
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  isprocessing                   FOR COLUMN isprcg          CHAR(1) NOT NULL DEFAULT 'N',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_user_id                                                DECIMAL(10,0),
  updated                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  result                                                    DECIMAL(10,0),
  errormsg                                                  VARCHAR(2000),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  createdby                                                 DECIMAL(10,0),
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) DEFAULT 'Y',
  name                                                      VARCHAR(60) DEFAULT NULL,
  reporttype                                                CHAR(1) NOT NULL DEFAULT 'P',
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_pinstance_pkey PRIMARY KEY (ad_pinstance_id),
  CONSTRAINT ad_pinstance_isprocessing_check CHECK (isprocessing in ('Y','N'))
)
;

