-- Table: hr_payselectioncheck

-- DROP TABLE hr_payselectioncheck;

CREATE TABLE hr_payselectioncheck FOR SYSTEM NAME hrpayselc
(
  hr_payselectioncheck_id        FOR COLUMN hr_pscid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bp_bankaccount_id            FOR COLUMN c_bpbaid        DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  hr_payselection_id             FOR COLUMN hr_psid         DECIMAL(10,0) NOT NULL,
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16) NOT NULL,
  isgenerateddraft               FOR COLUMN isgentdd        CHAR(1) NOT NULL DEFAULT 'N',
  isprinted                                                 CHAR(1) NOT NULL,
  isreceipt                                                 CHAR(1) NOT NULL,
  payamt                                                    DECFLOAT(16) NOT NULL,
  paymentrule                    FOR COLUMN payrule         CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  qty                                                       DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_payselectioncheck_key PRIMARY KEY (hr_payselectioncheck_id),
  CONSTRAINT hr_payselectioncheck_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_payselectioncheck_isgenerateddraft_check CHECK (isgenerateddraft in ('Y','N')),
  CONSTRAINT hr_payselectioncheck_isprinted_check CHECK (isprinted in ('Y','N')),
  CONSTRAINT hr_payselectioncheck_isreceipt_check CHECK (isreceipt in ('Y','N')),
  CONSTRAINT hr_payselectioncheck_processed_check CHECK (processed in ('Y','N'))
)
;

