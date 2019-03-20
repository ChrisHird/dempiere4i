-- Table: hr_processreport

-- DROP TABLE hr_processreport;

CREATE TABLE hr_processreport FOR SYSTEM NAME hrprcrpt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_processreport_id            FOR COLUMN hr_prcrpid     DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  printname                                                 VARCHAR(255) DEFAULT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  fileexportclass                FOR COLUMN fexportcls      VARCHAR(255) DEFAULT NULL,
  iscanexport                    FOR COLUMN iscanexp        CHAR(1) NOT NULL DEFAULT 'N',
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0),
  textmsg                                                   VARCHAR(2000) DEFAULT NULL,
  receiptfootermsg               FOR COLUMN rcptfmsg        CLOB,
  CONSTRAINT hr_processreport_key PRIMARY KEY (hr_processreport_id),
  CONSTRAINT hr_processreport_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_processreport_iscanexport_check CHECK (iscanexport in ('Y','N'))
)
;

