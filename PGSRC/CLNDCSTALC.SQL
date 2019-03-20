-- Table: c_landedcostallocation

-- DROP TABLE c_landedcostallocation;

CREATE TABLE c_landedcostallocation FOR SYSTEM NAME clndcstalc
(
  c_landedcostallocation_id      FOR COLUMN c_lcaid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0),
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0) NOT NULL,
  amt                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  base                                                      DECFLOAT(16) NOT NULL DEFAULT 0,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_landedcosttype_id            FOR COLUMN c_lcsttid       DECIMAL(10,0),
  CONSTRAINT c_landedcostallocation_pkey PRIMARY KEY (c_landedcostallocation_id),
  CONSTRAINT c_landedcostallocation_isactive_check CHECK (isactive in ('Y','N'))
)
;

