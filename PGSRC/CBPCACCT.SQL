-- Table: c_bp_customer_acct

-- DROP TABLE c_bp_customer_acct;

CREATE TABLE c_bp_customer_acct FOR SYSTEM NAME cbpcacct
(
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_receivable_acct              FOR COLUMN c_ra            DECIMAL(10,0),
  c_prepayment_acct              FOR COLUMN c_pa            DECIMAL(10,0),
  c_receivable_services_acct     FOR COLUMN c_rcvsid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bp_customer_acct_pkey PRIMARY KEY (c_bpartner_id, c_acctschema_id),
  CONSTRAINT c_bp_customer_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

