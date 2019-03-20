-- Table: ad_process

-- DROP TABLE ad_process;

CREATE TABLE ad_process
(
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  accesslevel                    FOR COLUMN acclvl          CHAR(1) NOT NULL DEFAULT '3',
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  procedurename                  FOR COLUMN procnam         VARCHAR(60),
  isreport                                                  CHAR(1) NOT NULL DEFAULT 'N',
  isdirectprint                  FOR COLUMN isdprint        CHAR(1) DEFAULT 'N',
  ad_reportview_id               FOR COLUMN ad_rptvid       DECIMAL(10,0),
  classname                                                 VARCHAR(255),
  statistic_count                FOR COLUMN statc           DECIMAL(10,0),
  statistic_seconds              FOR COLUMN stats           DECFLOAT(16),
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0),
  workflowvalue                  FOR COLUMN wfval           VARCHAR(40),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  isbetafunctionality            FOR COLUMN isbtafunc       CHAR(1) NOT NULL DEFAULT 'N',
  isserverprocess                FOR COLUMN issrvprc        CHAR(1) NOT NULL DEFAULT 'N',
  showhelp                                                  CHAR(1) DEFAULT 'Y',
  jasperreport                   FOR COLUMN jasprpt         VARCHAR(255),
  ad_form_id                                                DECIMAL(10,0),
  copyfromprocess                FOR COLUMN cpyfprc         CHAR(1),
  ad_browse_id                   FOR COLUMN ad_bwsid        DECIMAL(10,0),
  generateclass                  FOR COLUMN gencls          CHAR(1) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_process_pkey PRIMARY KEY (ad_process_id),
  CONSTRAINT ad_process_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_process_isdirectprint_check CHECK (isdirectprint in ('Y','N')),
  CONSTRAINT ad_process_isreport_check CHECK (isreport in ('Y','N'))
)
;

