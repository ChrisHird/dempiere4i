-- Table: c_bp_group_acct

-- DROP TABLE c_bp_group_acct;

CREATE TABLE c_bp_group_acct FOR SYSTEM NAME cbpgrpacct
(
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_receivable_acct              FOR COLUMN c_ra            DECIMAL(10,0) NOT NULL,
  c_prepayment_acct              FOR COLUMN c_pa            DECIMAL(10,0) NOT NULL,
  v_liability_acct               FOR COLUMN v_la            DECIMAL(10,0) NOT NULL,
  v_liability_services_acct      FOR COLUMN v_lsa           DECIMAL(10,0) NOT NULL,
  v_prepayment_acct              FOR COLUMN v_pa            DECIMAL(10,0) NOT NULL,
  paydiscount_exp_acct           FOR COLUMN pdexpa          DECIMAL(10,0) NOT NULL,
  paydiscount_rev_acct           FOR COLUMN pdreva          DECIMAL(10,0) NOT NULL,
  writeoff_acct                  FOR COLUMN woa             DECIMAL(10,0) NOT NULL,
  notinvoicedreceipts_acct       FOR COLUMN ninvrcpa        DECIMAL(10,0) NOT NULL,
  unearnedrevenue_acct           FOR COLUMN ura             DECIMAL(10,0) NOT NULL,
  notinvoicedrevenue_acct        FOR COLUMN ninvreva        DECIMAL(10,0) NOT NULL,
  notinvoicedreceivables_acct    FOR COLUMN ninvreca        DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  c_receivable_services_acct     FOR COLUMN c_rcvsid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bp_group_acct_pkey PRIMARY KEY (c_acctschema_id, c_bp_group_id),
  CONSTRAINT c_bp_group_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

