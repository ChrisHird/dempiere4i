-- Table: b_topictype

-- DROP TABLE b_topictype;

CREATE TABLE b_topictype FOR SYSTEM NAME btoptyp
(
  b_topictype_id                 FOR COLUMN b_ttid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  auctiontype                    FOR COLUMN auctyp          CHAR(1) NOT NULL,
  m_productmember_id             FOR COLUMN m_pmid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT b_topictype_pkey PRIMARY KEY (b_topictype_id),
  CONSTRAINT b_topictype_isactive_check CHECK (isactive in ('Y','N'))
)
;

