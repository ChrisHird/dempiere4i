-- Table: i_order

-- DROP TABLE i_order;

CREATE TABLE i_order
(
  i_order_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  isactive                                                  CHAR(1) DEFAULT 'Y',
  created                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  i_isimported                   FOR COLUMN i_ii            CHAR(1) NOT NULL DEFAULT 'N',
  i_errormsg                                                VARCHAR(2000),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) DEFAULT 'N',
  salesrep_id                    FOR COLUMN slsrepid        DECIMAL(10,0),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  m_shipper_id                   FOR COLUMN m_sid           DECIMAL(10,0),
  issotrx                                                   CHAR(1) DEFAULT 'Y',
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  bpartnervalue                  FOR COLUMN bpvalue         VARCHAR(40),
  name                                                      VARCHAR(60),
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0),
  billto_id                                                 DECIMAL(10,0),
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0),
  address1                                                  VARCHAR(60),
  address2                                                  VARCHAR(60),
  postal                                                    VARCHAR(10),
  city                                                      VARCHAR(60),
  c_region_id                    FOR COLUMN c_rid           DECIMAL(10,0),
  regionname                                                VARCHAR(60),
  c_country_id                   FOR COLUMN c_cntyid        DECIMAL(10,0),
  countrycode                    FOR COLUMN cntycde         CHAR(2),
  ad_user_id                                                DECIMAL(10,0),
  contactname                    FOR COLUMN cntnam          VARCHAR(60),
  email                                                     VARCHAR(60),
  phone                                                     VARCHAR(40),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  doctypename                    FOR COLUMN doctypnam       VARCHAR(60),
  c_paymentterm_id               FOR COLUMN c_ptid          DECIMAL(10,0),
  paymenttermvalue               FOR COLUMN paytrmval       VARCHAR(40),
  c_order_id                                                DECIMAL(10,0),
  documentno                                                VARCHAR(30),
  dateordered                    FOR COLUMN datord          TIMESTAMP,
  dateacct                                                  TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  productvalue                   FOR COLUMN prodval         VARCHAR(40),
  upc                                                       VARCHAR(30),
  sku                                                       VARCHAR(30),
  c_tax_id                                                  DECIMAL(10,0),
  taxindicator                   FOR COLUMN taxind          VARCHAR(10),
  taxamt                                                    DECFLOAT(16) DEFAULT 0,
  c_orderline_id                 FOR COLUMN c_olid          DECIMAL(10,0),
  linedescription                FOR COLUMN lindesc         VARCHAR(255),
  c_uom_id                                                  DECIMAL(10,0),
  qtyordered                                                DECFLOAT(16) DEFAULT 0,
  priceactual                    FOR COLUMN prcact          DECFLOAT(16) DEFAULT 0,
  freightamt                                                DECFLOAT(16) DEFAULT 0,
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  chargename                                                VARCHAR(60),
  c_ordersource_id               FOR COLUMN c_osrcid        DECIMAL(10,0),
  c_ordersourcevalue             FOR COLUMN c_osrcval       VARCHAR(40),
  deliveryrule                   FOR COLUMN dlyrule         CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_order_pkey PRIMARY KEY (i_order_id),
  CONSTRAINT i_order_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT i_order_issotrx_check CHECK (issotrx in ('Y','N')),
  CONSTRAINT i_order_processed_check CHECK (processed in ('Y','N'))
)
;

