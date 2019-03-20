-- Table: t_openitemtodate

-- DROP TABLE t_openitemtodate;

CREATE TABLE t_openitemtodate FOR SYSTEM NAME toitodt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  c_invoicepayschedule_id        FOR COLUMN c_ipsid         DECIMAL(10,0),
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_order_id                                                DECIMAL(10,0),
  c_paymentterm_id               FOR COLUMN c_ptid          DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dateacct                                                  TIMESTAMP,
  dateinvoiced                   FOR COLUMN datinv          TIMESTAMP,
  dateto                                                    TIMESTAMP,
  daysdue                                                   DECIMAL(10,0),
  discountamt                    FOR COLUMN dscamt          DECFLOAT(16),
  discountdate                   FOR COLUMN dscdat          TIMESTAMP,
  documentno                                                VARCHAR(30),
  duedate                                                   TIMESTAMP,
  grandtotal                                                DECFLOAT(16),
  invoicecollectiontype          FOR COLUMN invcoltyp       CHAR(1),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  ispayschedulevalid             FOR COLUMN ispscdval       CHAR(1),
  issotrx                                                   CHAR(1),
  netdays                                                   DECIMAL(10,0),
  openamt                                                   DECFLOAT(16),
  paidamt                                                   DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_openitemtodate_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT t_openitemtodate_ispayschedulevalid_check CHECK (ispayschedulevalid in ('Y','N')),
  CONSTRAINT t_openitemtodate_issotrx_check CHECK (issotrx in ('Y','N'))
)
;

