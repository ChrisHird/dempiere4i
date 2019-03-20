-- Table: pp_order_cost

-- DROP TABLE pp_order_cost;

CREATE TABLE pp_order_cost FOR SYSTEM NAME ppordcst
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  costingmethod                  FOR COLUMN cstmthd         CHAR(1) DEFAULT 'x',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  cumulatedamt                   FOR COLUMN cumdteamt       DECFLOAT(16),
  cumulatedamtpost               FOR COLUMN cumdteamtp      DECFLOAT(16),
  cumulatedqty                   FOR COLUMN cumqty          DECFLOAT(16),
  cumulatedqtypost               FOR COLUMN cumqtyp         DECFLOAT(16),
  currentcostprice               FOR COLUMN curcstprc       DECFLOAT(16),
  currentcostpricell             FOR COLUMN curcstpl        DECFLOAT(16),
  currentqty                                                DECFLOAT(16),
  isactive                                                  CHAR(1) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0),
  m_costtype_id                  FOR COLUMN m_ctid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pp_order_cost_id               FOR COLUMN pp_ocstid       DECIMAL(10,0) NOT NULL,
  pp_order_id                    FOR COLUMN pp_ordid        DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_order_cost_pkey PRIMARY KEY (pp_order_cost_id),
  CONSTRAINT pp_order_cost_isactive_check CHECK (isactive in ('Y','N'))
)
;

