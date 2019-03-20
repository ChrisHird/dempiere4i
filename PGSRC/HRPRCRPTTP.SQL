-- Table: hr_processreporttemplate

-- DROP TABLE hr_processreporttemplate;

CREATE TABLE hr_processreporttemplate FOR SYSTEM NAME hrprcrpttp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_processreporttemplate_id    FOR COLUMN hr_pcrptid    DECIMAL(10,0) NOT NULL,
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  hr_processreport_id            FOR COLUMN hr_prcrpid     DECIMAL(10,0) NOT NULL,
  CONSTRAINT hr_processreporttemplate_key PRIMARY KEY (hr_processreporttemplate_id),
  CONSTRAINT hr_processreporttemplate_isactive_check CHECK (isactive in ('Y','N'))
)
;

