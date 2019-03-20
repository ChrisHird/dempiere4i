-- Table: hr_processreportsource

-- DROP TABLE hr_processreportsource;

CREATE TABLE hr_processreportsource FOR SYSTEM NAME hrprcrpts
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_processreportsource_id      FOR COLUMN hr_pcrpsid    DECIMAL(10,0) NOT NULL,
  columntype                                                CHAR(1) DEFAULT NULL,
  prefix                                                    VARCHAR(255) DEFAULT NULL,
  suffix                                                    VARCHAR(255) DEFAULT NULL,
  formatpattern                  FOR COLUMN fmtpatn         VARCHAR(22) DEFAULT NULL,
  seqno                                                     DECIMAL(10,0),
  hr_concept_id                  FOR COLUMN he_cptid        DECIMAL(10,0) NOT NULL,
  hr_processreportline_id        FOR COLUMN hr_pcrplid    DECIMAL(10,0) NOT NULL,
  CONSTRAINT hr_processreportsource_key PRIMARY KEY (hr_processreportsource_id),
  CONSTRAINT hr_processreportsource_isactive_check CHECK (isactive in ('Y','N'))
)
;

