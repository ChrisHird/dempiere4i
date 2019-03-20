-- Table: c_recurring_run

-- DROP TABLE c_recurring_run;

CREATE TABLE c_recurring_run FOR SYSTEM NAME crecrr
(
  c_recurring_run_id             FOR COLUMN c_recrid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  c_order_id                                                DECIMAL(10,0),
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  gl_journalbatch_id             FOR COLUMN gl_jbid         DECIMAL(10,0),
  c_recurring_id                 FOR COLUMN c_recid         DECIMAL(10,0) NOT NULL,
  datedoc                                                   TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_recurring_run_pkey PRIMARY KEY (c_recurring_run_id),
  CONSTRAINT c_recurring_run_isactive_check CHECK (isactive in ('Y','N'))
)
;

