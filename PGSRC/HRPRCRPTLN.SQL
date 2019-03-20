-- Table: hr_processreportline

-- DROP TABLE hr_processreportline;

CREATE TABLE hr_processreportline FOR SYSTEM NAME hrprcrptln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_processreportline_id        FOR COLUMN hr_pcrplid    DECIMAL(10,0) NOT NULL,
  printname                                                 VARCHAR(60) DEFAULT NULL,
  seqno                                                     DECIMAL(10,0),
  issummarized                   FOR COLUMN issumd          CHAR(1) NOT NULL DEFAULT 'N',
  isaveraged                                                CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  hr_processreport_id            FOR COLUMN hr_prcrpid     DECIMAL(10,0) NOT NULL,
  hr_concept_id                  FOR COLUMN he_cptid        DECIMAL(10,0),
  CONSTRAINT hr_processreportline_key PRIMARY KEY (hr_processreportline_id),
  CONSTRAINT hr_processreportline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_processreportline_isaveraged_check CHECK (isaveraged in ('Y','N')),
  CONSTRAINT hr_processreportline_issummarized_check CHECK (issummarized in ('Y','N'))
)
;

