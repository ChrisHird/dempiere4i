-- Table: c_allocationline

-- DROP TABLE c_allocationline;

CREATE TABLE c_allocationline FOR SYSTEM NAME calcln
(
  c_allocationline_id            FOR COLUMN c_alid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  allocationno                   FOR COLUMN alcno           DECIMAL(10,0),
  datetrx                                                   TIMESTAMP,
  ismanual                                                  CHAR(1) DEFAULT 'N',
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_order_id                                                DECIMAL(10,0),
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  c_cashline_id                  FOR COLUMN c_clid          DECIMAL(10,0),
  amount                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  writeoffamt                    FOR COLUMN woamt           DECFLOAT(16) NOT NULL DEFAULT 0,
  overunderamt                   FOR COLUMN ouamt           DECFLOAT(16) DEFAULT 0,
  c_allocationhdr_id             FOR COLUMN c_ahid          DECIMAL(10,0) NOT NULL,
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  reversalline_id                FOR COLUMN revlnid         DECIMAL(10,0),
  CONSTRAINT c_allocationline_pkey PRIMARY KEY (c_allocationline_id),
  CONSTRAINT c_allocationline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_allocationline_ismanual_check CHECK (ismanual in ('Y','N'))
)
;

