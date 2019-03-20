-- Table: hr_employeeinsurance

-- DROP TABLE hr_employeeinsurance;

CREATE TABLE hr_employeeinsurance FOR SYSTEM NAME hrempins
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_employeeinsurance_id        FOR COLUMN hr_empiid       DECIMAL(10,0) NOT NULL,
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  sponsorname                    FOR COLUMN sponsornm       VARCHAR(40) NOT NULL,
  insuranceplan                  FOR COLUMN insplan         VARCHAR(40),
  reference                                                 VARCHAR(40) NOT NULL,
  coverageamount                 FOR COLUMN cvramt          DECFLOAT(16) NOT NULL,
  premiumamount                  FOR COLUMN premamt         DECFLOAT(16) NOT NULL,
  claimedamount                  FOR COLUMN clmamt          DECFLOAT(16),
  balanceamount                  FOR COLUMN balamt          DECFLOAT(16),
  description                    FOR COLUMN desc            VARCHAR(80),
  hr_insurancetype_id            FOR COLUMN hr_instid       DECIMAL(10,0) NOT NULL,
  paymentfrequency               FOR COLUMN pmtfreq         VARCHAR(30) NOT NULL,
  paydat                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  hr_period_id                   FOR COLUMN hr_pdid         DECIMAL(10,0),
  datelastpaid                   FOR COLUMN dtelstpd        TIMESTAMP,
  datelastpremium                FOR COLUMN dtelstprm       TIMESTAMP,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_employeeinsurance_key PRIMARY KEY (hr_employeeinsurance_id),
  CONSTRAINT hr_employeeinsurance_isactive_check CHECK (isactive in ('Y','N'))
)
;

