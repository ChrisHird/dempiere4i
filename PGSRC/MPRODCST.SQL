-- Table: m_product_costing

-- DROP TABLE m_product_costing;

CREATE TABLE m_product_costing FOR SYSTEM NAME mprodcst
(
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  currentcostprice               FOR COLUMN curcstprc       DECFLOAT(16) NOT NULL DEFAULT 0,
  futurecostprice                FOR COLUMN futcstprc       DECFLOAT(16) NOT NULL DEFAULT 0,
  coststandard                   FOR COLUMN cststd          DECFLOAT(16) NOT NULL DEFAULT 0,
  coststandardpoqty              FOR COLUMN cststdpoq       DECFLOAT(16) NOT NULL DEFAULT 0,
  coststandardpoamt              FOR COLUMN cststdpoa       DECFLOAT(16) NOT NULL DEFAULT 0,
  coststandardcumqty             FOR COLUMN cststdcq        DECFLOAT(16) NOT NULL DEFAULT 0,
  coststandardcumamt             FOR COLUMN cststdca        DECFLOAT(16) NOT NULL DEFAULT 0,
  costaverage                    FOR COLUMN cstavg          DECFLOAT(16) NOT NULL DEFAULT 0,
  costaveragecumqty              FOR COLUMN cstavgcq        DECFLOAT(16) NOT NULL DEFAULT 0,
  costaveragecumamt              FOR COLUMN cstavgca        DECFLOAT(16) NOT NULL DEFAULT 0,
  pricelastpo                    FOR COLUMN prclstpo        DECFLOAT(16) NOT NULL DEFAULT 0,
  pricelastinv                   FOR COLUMN prclstinv       DECFLOAT(16) NOT NULL DEFAULT 0,
  totalinvqty                    FOR COLUMN totinvqty       DECFLOAT(16) NOT NULL DEFAULT 0,
  totalinvamt                    FOR COLUMN totinvamt       DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_product_costing_pkey PRIMARY KEY (m_product_id, c_acctschema_id),
  CONSTRAINT m_product_costing_isactive_check CHECK (isactive in ('Y','N'))
)
;

