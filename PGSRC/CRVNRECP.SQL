-- Table: c_revenuerecognition_plan

-- DROP TABLE c_revenuerecognition_plan;

CREATE TABLE c_revenuerecognition_plan FOR SYSTEM NAME crvnrecp
(
  c_revenuerecognition_plan_id   FOR COLUMN c_rrpid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  c_revenuerecognition_id        FOR COLUMN c_rrid          DECIMAL(10,0) NOT NULL,
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0) NOT NULL,
  unearnedrevenue_acct           FOR COLUMN ura             DECIMAL(10,0) NOT NULL,
  p_revenue_acct                 FOR COLUMN p_ra            DECIMAL(10,0) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  totalamt                                                  DECFLOAT(16) NOT NULL DEFAULT 0,
  recognizedamt                  FOR COLUMN recamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_revenuerecognition_plan_pkey PRIMARY KEY (c_revenuerecognition_plan_id),
  CONSTRAINT c_revenuerecognition_plan_isactive_check CHECK (isactive in ('Y','N'))
)
;

