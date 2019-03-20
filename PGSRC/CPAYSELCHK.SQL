-- Table: c_payselectioncheck

-- DROP TABLE c_payselectioncheck;

CREATE TABLE c_payselectioncheck FOR SYSTEM NAME cpayselchk
(
  c_payselectioncheck_id         FOR COLUMN c_pscid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_payselection_id              FOR COLUMN c_pselid        DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  payamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  documentno                                                VARCHAR(30),
  isprinted                                                 CHAR(1) NOT NULL DEFAULT 'N',
  paymentrule                    FOR COLUMN payrule         CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  isreceipt                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_bp_bankaccount_id            FOR COLUMN c_bpbaid        DECIMAL(10,0),
  isgenerateddraft               FOR COLUMN isgentdd        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_payselectioncheck_pkey PRIMARY KEY (c_payselectioncheck_id),
  CONSTRAINT c_payselectioncheck_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_payselectioncheck_isgenerateddraft_check CHECK (isgenerateddraft in ('Y','N'))
)
;

