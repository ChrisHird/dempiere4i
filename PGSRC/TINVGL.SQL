-- Table: t_invoicegl

-- DROP TABLE t_invoicegl;

CREATE TABLE t_invoicegl FOR SYSTEM NAME tinvgl
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0) NOT NULL,
  fact_acct_id                   FOR COLUMN fact_aid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  grandtotal                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  openamt                                                   DECFLOAT(16) NOT NULL DEFAULT 0,
  percent                                                   DECFLOAT(16),
  apar                                                      CHAR(1),
  amtsourcebalance               FOR COLUMN amtsrcb         DECFLOAT(16) NOT NULL DEFAULT 0,
  amtacctbalance                 FOR COLUMN amtactb         DECFLOAT(16) NOT NULL DEFAULT 0,
  c_conversiontypereval_id       FOR COLUMN c_cnvtrvid      DECIMAL(10,0) NOT NULL,
  amtrevaldr                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  amtrevalcr                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  datereva                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  amtrevaldrdiff                 FOR COLUMN amtrvdrdf       DECFLOAT(16) NOT NULL DEFAULT 0,
  amtrevalcrdiff                 FOR COLUMN amtrvcrdf       DECFLOAT(16) NOT NULL DEFAULT 0,
  c_doctypereval_id              FOR COLUMN c_dtrvid        DECIMAL(10,0),
  isallcurrencies                FOR COLUMN isallcur        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT t_invoicegl_pkey PRIMARY KEY (ad_pinstance_id, c_invoice_id, fact_acct_id),
  CONSTRAINT t_invoicegl_isactive_check CHECK (isactive in ('Y','N'))
)
;

