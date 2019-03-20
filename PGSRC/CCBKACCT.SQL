-- Table: c_cashbook_acct

-- DROP TABLE c_cashbook_acct;

CREATE TABLE c_cashbook_acct FOR SYSTEM NAME ccbkacct
(
  c_cashbook_id                  FOR COLUMN c_cbid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  cb_asset_acct                  FOR COLUMN cb_aa           DECIMAL(10,0) NOT NULL,
  cb_cashtransfer_acct           FOR COLUMN cb_cta          DECIMAL(10,0) NOT NULL,
  cb_differences_acct            FOR COLUMN cb_da           DECIMAL(10,0) NOT NULL,
  cb_expense_acct                FOR COLUMN cb_ea           DECIMAL(10,0) NOT NULL,
  cb_receipt_acct                FOR COLUMN cb_ra           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_cashbook_acct_pkey PRIMARY KEY (c_cashbook_id, c_acctschema_id),
  CONSTRAINT c_cashbook_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

