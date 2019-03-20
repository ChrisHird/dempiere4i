-- Table: c_bankaccount_acct

-- DROP TABLE c_bankaccount_acct;

CREATE TABLE c_bankaccount_acct FOR SYSTEM NAME cbaccta
(
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  b_intransit_acct               FOR COLUMN b_ita           DECIMAL(10,0) NOT NULL,
  b_asset_acct                   FOR COLUMN b_aa            DECIMAL(10,0) NOT NULL,
  b_expense_acct                 FOR COLUMN b_ea            DECIMAL(10,0) NOT NULL,
  b_interestrev_acct             FOR COLUMN b_ira           DECIMAL(10,0) NOT NULL,
  b_interestexp_acct             FOR COLUMN b_iea           DECIMAL(10,0) NOT NULL,
  b_unidentified_acct            FOR COLUMN b_ua            DECIMAL(10,0) NOT NULL,
  b_unallocatedcash_acct         FOR COLUMN b_uca           DECIMAL(10,0) NOT NULL,
  b_paymentselect_acct           FOR COLUMN b_psa           DECIMAL(10,0) NOT NULL,
  b_settlementgain_acct          FOR COLUMN b_sga           DECIMAL(10,0) NOT NULL,
  b_settlementloss_acct          FOR COLUMN b_sla           DECIMAL(10,0) NOT NULL,
  b_revaluationgain_acct         FOR COLUMN b_rga           DECIMAL(10,0) NOT NULL,
  b_revaluationloss_acct         FOR COLUMN b_rla           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bankaccount_acct_pkey PRIMARY KEY (c_bankaccount_id, c_acctschema_id),
  CONSTRAINT c_bankaccount_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

