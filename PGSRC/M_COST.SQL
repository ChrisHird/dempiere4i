-- Table: m_cost

-- DROP TABLE m_cost;

CREATE TABLE m_cost
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_costtype_id                  FOR COLUMN m_ctid          DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  currentcostprice               FOR COLUMN curcstprc       DECFLOAT(16) NOT NULL,
  currentqty                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  cumulatedamt                   FOR COLUMN cumdteamt       DECFLOAT(16) DEFAULT 0,
  cumulatedqty                   FOR COLUMN cumqty          DECFLOAT(16) DEFAULT 0,
  futurecostprice                FOR COLUMN futcstprc       DECFLOAT(16),
  description                    FOR COLUMN desc            VARCHAR(255),
  percent                                                   DECIMAL(10,0) DEFAULT 0,
  currentcostpricell             FOR COLUMN curcstpl        DECFLOAT(16) DEFAULT 0,
  futurecostpricell              FOR COLUMN fcstprcl        DECFLOAT(16),
  iscostfrozen                   FOR COLUMN iscstfz         CHAR(1) DEFAULT 'N',
  cumulatedamtll                 FOR COLUMN cumdteamtl      DECFLOAT(16),
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_cost_pkey PRIMARY KEY (ad_client_id, ad_org_id, m_product_id, m_costtype_id,
  						c_acctschema_id, m_costelement_id, m_warehouse_id, m_attributesetinstance_id),
  CONSTRAINT m_cost_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_cost_iscostfrozen_check CHECK (iscostfrozen in ('Y','N'))
)
;

