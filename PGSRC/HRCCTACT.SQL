-- Table: hr_concept_acct

-- DROP TABLE hr_concept_acct;

CREATE TABLE hr_concept_acct FOR SYSTEM NAME hrcctact
(
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0),
  isbalancing                    FOR COLUMN isbalang        CHAR(1),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  hr_concept_acct_id             FOR COLUMN hr_cptaid       DECIMAL(10,0) NOT NULL,
  hr_concept_id                  FOR COLUMN he_cptid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  hr_revenue_acct                FOR COLUMN hr_revact       DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_expense_acct                FOR COLUMN hr_expact       DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0),
  CONSTRAINT hr_concept_acct_pkey PRIMARY KEY (hr_concept_acct_id),
  CONSTRAINT hr_concept_acct_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_concept_acct_isbalancing_check CHECK (isbalancing in ('Y','N'))
)
;

