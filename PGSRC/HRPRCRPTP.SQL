-- Table: hr_processreportpayroll

-- DROP TABLE hr_processreportpayroll;

CREATE TABLE hr_processreportpayroll FOR SYSTEM NAME hrprcrptp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_processreportpayroll_id     FOR COLUMN hr_pcrppid    DECIMAL(10,0) NOT NULL,
  hr_processreport_id            FOR COLUMN hr_prcrpid     DECIMAL(10,0) NOT NULL,
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0) NOT NULL,
  CONSTRAINT hr_processreportpayroll_key PRIMARY KEY (hr_processreportpayroll_id),
  CONSTRAINT hr_processreportpayroll_isactive_check CHECK (isactive in ('Y','N'))
)
;

