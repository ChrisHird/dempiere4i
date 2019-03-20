-- Table: m_freight

-- DROP TABLE m_freight;

CREATE TABLE m_freight
(
  m_freight_id                   FOR COLUMN m_fhtid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_shipper_id                   FOR COLUMN m_sid           DECIMAL(10,0) NOT NULL,
  m_freightcategory_id           FOR COLUMN m_fcid          DECIMAL(10,0) NOT NULL,
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_country_id                   FOR COLUMN c_cntyid        DECIMAL(10,0),
  to_country_id                  FOR COLUMN tocntyid        DECIMAL(10,0),
  c_region_id                    FOR COLUMN c_rid           DECIMAL(10,0),
  to_region_id                   FOR COLUMN torgnid         DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  freightamt                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_freight_pkey PRIMARY KEY (m_freight_id)
)
  ;
