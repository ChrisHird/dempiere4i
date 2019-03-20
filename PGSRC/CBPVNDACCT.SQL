-- Table: c_bp_vendor_acct

-- DROP TABLE c_bp_vendor_acct;

CREATE TABLE c_bp_vendor_acct FOR SYSTEM NAME cbpvndacct
(
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  v_liability_acct               FOR COLUMN v_la            DECIMAL(10,0),
  v_liability_services_acct      FOR COLUMN v_lsa           DECIMAL(10,0),
  v_prepayment_acct              FOR COLUMN v_pa            DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bp_vendor_acct_pkey PRIMARY KEY (c_acctschema_id, c_bpartner_id),
  CONSTRAINT c_bp_vendor_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

