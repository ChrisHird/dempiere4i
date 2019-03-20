-- Table: c_charge_acct

-- DROP TABLE c_charge_acct;

CREATE TABLE c_charge_acct FOR SYSTEM NAME cchrgacct
(
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ch_expense_acct                FOR COLUMN ch_ea           DECIMAL(10,0) NOT NULL,
  ch_revenue_acct                FOR COLUMN ch_ra           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_charge_acct_pkey PRIMARY KEY (c_charge_id, c_acctschema_id),
  CONSTRAINT c_charge_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

