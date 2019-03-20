-- Table: c_tax_acct

-- DROP TABLE c_tax_acct;

CREATE TABLE c_tax_acct
(
  c_tax_id                                                  DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  t_due_acct                                                DECIMAL(10,0) NOT NULL,
  t_liability_acct               FOR COLUMN t_la            DECIMAL(10,0) NOT NULL,
  t_credit_acct                  FOR COLUMN t_ca            DECIMAL(10,0) NOT NULL,
  t_receivables_acct             FOR COLUMN t_ra            DECIMAL(10,0) NOT NULL,
  t_expense_acct                 FOR COLUMN t_ea            DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_tax_acct_pkey PRIMARY KEY (c_tax_id, c_acctschema_id),
  CONSTRAINT c_tax_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

