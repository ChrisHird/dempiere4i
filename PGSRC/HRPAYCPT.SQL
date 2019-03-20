-- Table: hr_payrollconcept

-- DROP TABLE hr_payrollconcept;

CREATE TABLE hr_payrollconcept FOR SYSTEM NAME hrpaycpt
(
  name                                                      VARCHAR(60),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_rule_id                                                DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  hr_concept_id                  FOR COLUMN he_cptid        DECIMAL(10,0) NOT NULL,
  hr_payrollconcept_id           FOR COLUMN hr_prcptid      DECIMAL(10,0) NOT NULL,
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  isdisplayed                    FOR COLUMN isdspd          CHAR(1) DEFAULT 'Y',
  isinclude                                                 CHAR(1),
  isprinted                                                 CHAR(1) NOT NULL DEFAULT 'N',
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_payrollconcept_pkey PRIMARY KEY (hr_payrollconcept_id),
  CONSTRAINT hr_payrollconcept_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_payrollconcept_isdisplayed_check CHECK (isdisplayed in ('Y','N')),
  CONSTRAINT hr_payrollconcept_isinclude_check CHECK (isinclude in ('Y','N')),
  CONSTRAINT hr_payrollconcept_isprinted_check CHECK (isprinted in ('Y','N'))
)
;

