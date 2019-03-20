-- Table: c_payselectionline

-- DROP TABLE c_payselectionline;

CREATE TABLE c_payselectionline FOR SYSTEM NAME cpayselln
(
  c_payselectionline_id          FOR COLUMN c_pslid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_payselection_id              FOR COLUMN c_pselid        DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  paymentrule                    FOR COLUMN payrule         CHAR(1) NOT NULL,
  ismanual                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  payamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  differenceamt                  FOR COLUMN difamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  c_payselectioncheck_id         FOR COLUMN c_pscid         DECIMAL(10,0),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  openamt                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'N',
  c_invoicepayschedule_id        FOR COLUMN c_ipsid         DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_bp_bankaccount_id            FOR COLUMN c_bpbaid        DECIMAL(10,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  c_conversion_rate_id           FOR COLUMN c_cvnrid        DECIMAL(10,0),
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0),
  c_order_id                                                DECIMAL(10,0),
  isprepayment                   FOR COLUMN iprepay         CHAR(1) DEFAULT 'N',
  hr_movement_id                 FOR COLUMN hr_movid        DECIMAL(10,0),
  c_payselectionline_parent_id   FOR COLUMN c_psellpid      DECIMAL(10,0),
  amtsource                                                 DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_bankaccountto_id             FOR COLUMN c_batoid        DECIMAL(10,0),
  CONSTRAINT c_payselectionline_pkey PRIMARY KEY (c_payselectionline_id),
  CONSTRAINT c_payselectionline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_payselectionline_ismanual_check CHECK (ismanual in ('Y','N')),
  CONSTRAINT c_payselectionline_isprepayment_check CHECK (isprepayment in ('Y','N'))
)
;

