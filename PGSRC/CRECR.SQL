-- Table: c_recurring

-- DROP TABLE c_recurring;

CREATE TABLE c_recurring FOR SYSTEM NAME crecr
(
  c_recurring_id                 FOR COLUMN c_recid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  recurringtype                  FOR COLUMN rectyp          CHAR(1) NOT NULL,
  c_order_id                                                DECIMAL(10,0),
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  gl_journalbatch_id             FOR COLUMN gl_jbid         DECIMAL(10,0),
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL,
  runsmax                                                   DECIMAL(10,0) NOT NULL,
  runsremaining                  FOR COLUMN runrem          DECIMAL(10,0) NOT NULL,
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  datenextrun                    FOR COLUMN datnxtr         TIMESTAMP,
  processing                                                CHAR(1),
  frequency                                                 DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_recurring_pkey PRIMARY KEY (c_recurring_id),
  CONSTRAINT c_recurring_isactive_check CHECK (isactive in ('Y','N'))
)
;

