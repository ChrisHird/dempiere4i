-- Table: c_landedcost

-- DROP TABLE c_landedcost;

CREATE TABLE c_landedcost FOR SYSTEM NAME clndcst
(
  c_landedcost_id                FOR COLUMN c_lcid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0) NOT NULL,
  m_costelement_id               FOR COLUMN m_celmid        DECIMAL(10,0) NOT NULL,
  m_inoutline_id                 FOR COLUMN m_iolid         DECIMAL(10,0),
  m_inout_id                                                DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  landedcostdistribution         FOR COLUMN lcstdstb        CHAR(1) NOT NULL,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_landedcosttype_id            FOR COLUMN c_lcsttid       DECIMAL(10,0),
  CONSTRAINT c_landedcost_pkey PRIMARY KEY (c_landedcost_id)
)
  ;
