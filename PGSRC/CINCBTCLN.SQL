-- Table: c_invoicebatchline

-- DROP TABLE c_invoicebatchline;

CREATE TABLE c_invoicebatchline FOR SYSTEM NAME cincbtcln
(
  c_invoicebatchline_id          FOR COLUMN c_iblnid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_invoicebatch_id              FOR COLUMN c_ibid          DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL DEFAULT 0,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  dateinvoiced                   FOR COLUMN datinv          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  dateacct                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0) NOT NULL,
  qtyentered                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  priceentered                   FOR COLUMN prcent          DECFLOAT(16) NOT NULL DEFAULT 0,
  istaxincluded                  FOR COLUMN itinc           CHAR(1) NOT NULL DEFAULT 'N',
  linenetamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  c_tax_id                                                  DECIMAL(10,0) NOT NULL,
  taxamt                                                    DECFLOAT(16) NOT NULL DEFAULT 0,
  linetotalamt                   FOR COLUMN lintamt         DECFLOAT(16) NOT NULL DEFAULT 0,
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  user1_id                                                  DECIMAL(10,0),
  user2_id                                                  DECIMAL(10,0),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  user3_id                                                  DECIMAL(10,0),
  user4_id                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_invoicebatchline_pkey PRIMARY KEY (c_invoicebatchline_id),
  CONSTRAINT c_invoicebatchline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_invoicebatchline_istaxincluded_check CHECK (istaxincluded in ('Y','N')),
  CONSTRAINT c_invoicebatchline_processed_check CHECK (processed in ('Y','N'))
)
;

