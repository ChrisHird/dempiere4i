-- Table: c_dunningrunline

-- DROP TABLE c_dunningrunline;

CREATE TABLE c_dunningrunline FOR SYSTEM NAME cdunrln
(
  c_dunningrunline_id            FOR COLUMN c_drlid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_dunningrunentry_id           FOR COLUMN c_dreid         DECIMAL(10,0) NOT NULL,
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  amt                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  convertedamt                   FOR COLUMN cvtamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  daysdue                                                   DECIMAL(10,0) NOT NULL DEFAULT 0,
  timesdunned                    FOR COLUMN timdun          DECIMAL(10,0) NOT NULL DEFAULT 0,
  interestamt                    FOR COLUMN intamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  feeamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  totalamt                                                  DECFLOAT(16) NOT NULL DEFAULT 0,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isindispute                    FOR COLUMN isdispute       CHAR(1) NOT NULL DEFAULT 'N',
  openamt                                                   DECFLOAT(16) NOT NULL,
  c_invoicepayschedule_id        FOR COLUMN c_ipsid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_order_id                                                DECIMAL(10,0),
  CONSTRAINT c_dunningrunline_pkey PRIMARY KEY (c_dunningrunline_id),
  CONSTRAINT c_dunningrunline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_dunningrunline_processed_check CHECK (processed in ('Y','N'))
)
;

