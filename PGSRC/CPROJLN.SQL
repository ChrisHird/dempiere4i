-- Table: c_projectline

-- DROP TABLE c_projectline;

CREATE TABLE c_projectline FOR SYSTEM NAME cprojln
(
  c_projectline_id               FOR COLUMN c_plid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  plannedqty                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  plannedprice                   FOR COLUMN plnprc          DECFLOAT(16) NOT NULL DEFAULT 0,
  plannedamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  plannedmarginamt               FOR COLUMN plnmamt         DECFLOAT(16) NOT NULL DEFAULT 0,
  committedamt                   FOR COLUMN cmtamt          DECFLOAT(16) DEFAULT 0,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  invoicedamt                    FOR COLUMN invamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  invoicedqty                    FOR COLUMN invqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  committedqty                   FOR COLUMN cmtqty          DECFLOAT(16) DEFAULT 0,
  c_projectissue_id              FOR COLUMN c_piid          DECIMAL(10,0),
  c_order_id                                                DECIMAL(10,0),
  c_orderpo_id                   FOR COLUMN c_opoid         DECIMAL(10,0),
  isprinted                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  dopricing                                                 CHAR(1) DEFAULT 'Y',
  c_projectphase_id              FOR COLUMN c_prjpid        DECIMAL(10,0),
  c_projecttask_id               FOR COLUMN c_prjtskid      DECIMAL(10,0),
  s_resourceassignment_id        FOR COLUMN s_raid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  vendor_id                                                 DECIMAL(10,0),
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  pp_order_id                    FOR COLUMN pp_ordid        DECIMAL(10,0),
  CONSTRAINT c_projectline_pkey PRIMARY KEY (c_projectline_id),
  CONSTRAINT c_projectline_isactive_check CHECK (isactive in ('Y','N'))
)
;

