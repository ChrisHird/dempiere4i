-- Table: m_product_po

-- DROP TABLE m_product_po;

CREATE TABLE m_product_po FOR SYSTEM NAME mprodpo
(
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  iscurrentvendor                FOR COLUMN iscurvnd        CHAR(1) NOT NULL DEFAULT 'Y',
  c_uom_id                                                  DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  pricelist                                                 DECFLOAT(16) DEFAULT 0,
  pricepo                                                   DECFLOAT(16) DEFAULT 0,
  priceeffective                 FOR COLUMN prceft          TIMESTAMP,
  pricelastpo                    FOR COLUMN prclstpo        DECFLOAT(16) DEFAULT 0,
  pricelastinv                   FOR COLUMN prclstinv       DECFLOAT(16) DEFAULT 0,
  vendorproductno                FOR COLUMN vprodnum        VARCHAR(40) NOT NULL,
  upc                                                       VARCHAR(20),
  vendorcategory                 FOR COLUMN vndcat          character(30),
  discontinued                   FOR COLUMN discont         CHAR(1) DEFAULT 'N',
  discontinuedby                 FOR COLUMN dscby           TIMESTAMP,
  order_min                                                 DECFLOAT(16) DEFAULT 0,
  order_pack                                                DECFLOAT(16) DEFAULT 0,
  costperorder                   FOR COLUMN cstpord         DECFLOAT(16) DEFAULT 0,
  deliverytime_promised          FOR COLUMN dlytp           DECIMAL(10,0),
  deliverytime_actual            FOR COLUMN dlytimact       DECIMAL(10,0),
  qualityrating                  FOR COLUMN qrating         DECFLOAT(16),
  royaltyamt                                                DECFLOAT(16) DEFAULT 0,
  manufacturer                   FOR COLUMN manuf           character(30),
  discontinuedat                 FOR COLUMN discontdte      TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_product_po_pkey PRIMARY KEY (m_product_id, c_bpartner_id),
  CONSTRAINT m_product_po_discontinued_check CHECK (discontinued in ('Y','N')),
  CONSTRAINT m_product_po_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_product_po_iscurrentvendor_check CHECK (iscurrentvendor in ('Y','N'))
)
;

