-- Table: pp_order_bom

-- DROP TABLE pp_order_bom;

CREATE TABLE pp_order_bom FOR SYSTEM NAME ppordbom
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  bomtype                                                   CHAR(1),
  bomuse                                                    CHAR(1),
  c_uom_id                                                  DECIMAL(10,0) NOT NULL,
  copyfrom                                                  CHAR(1),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  documentno                                                VARCHAR(20),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  m_changenotice_id              FOR COLUMN m_chgnid        DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pp_order_bom_id                FOR COLUMN pp_obomid       DECIMAL(10,0) NOT NULL,
  pp_order_id                    FOR COLUMN pp_ordid        DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  revision                                                  VARCHAR(10),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validto                                                   TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(80) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_order_bom_pkey PRIMARY KEY (pp_order_bom_id),
  CONSTRAINT pp_order_bom_isactive_check CHECK (isactive in ('Y','N'))
)
;

