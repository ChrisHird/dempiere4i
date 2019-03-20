-- Table: pp_product_bom

-- DROP TABLE pp_product_bom;

CREATE TABLE pp_product_bom FOR SYSTEM NAME ppprdbom
(
  value                                                     VARCHAR(80) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  documentno                                                VARCHAR(22),
  revision                                                  VARCHAR(10),
  description                    FOR COLUMN desc            VARCHAR(255),
  copyfrom                                                  CHAR(1),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  m_changenotice_id              FOR COLUMN m_chgnid        DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validto                                                   TIMESTAMP,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  bomtype                                                   CHAR(1) DEFAULT 'A',
  bomuse                                                    CHAR(1) DEFAULT 'M',
  c_uom_id                                                  DECIMAL(10,0),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_product_bom_pkey PRIMARY KEY (pp_product_bom_id),
  CONSTRAINT pp_product_bom_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_product_bom_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

