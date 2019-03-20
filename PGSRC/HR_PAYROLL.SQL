-- Table: hr_payroll

-- DROP TABLE hr_payroll;

CREATE TABLE hr_payroll
(
  name                                                      VARCHAR(60) NOT NULL,
  value                                                     VARCHAR(40),
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_contract_id                 FOR COLUMN hr_cntrid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  paymentrule                    FOR COLUMN payrule         CHAR(1) NOT NULL,
  processed                                                 CHAR(1),
  processing                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isignoredefaultpayroll         FOR COLUMN isigndftp       CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  ispostperemployee              FOR COLUMN ispstpemp       CHAR(1) NOT NULL DEFAULT 'N',
  CONSTRAINT hr_payroll_pkey PRIMARY KEY (hr_payroll_id),
  CONSTRAINT hr_payroll_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_payroll_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_payroll_isignoredefaultpayroll_check CHECK (isignoredefaultpayroll in ('Y','N')),
  CONSTRAINT hr_payroll_ispostperemployee_check CHECK (ispostperemployee in ('Y','N')),
  CONSTRAINT hr_payroll_processed_check CHECK (processed in ('Y','N'))
)
;

