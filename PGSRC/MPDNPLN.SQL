-- Table: m_productionplan

-- DROP TABLE m_productionplan;

CREATE TABLE m_productionplan FOR SYSTEM NAME mpdnpln
(
  m_productionplan_id            FOR COLUMN m_pdnpid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_production_id                FOR COLUMN m_pdnid         DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  productionqty                  FOR COLUMN pdnqty          DECFLOAT(16) NOT NULL DEFAULT 0,
  m_locator_id                   FOR COLUMN m_lid           DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_productionplan_pkey PRIMARY KEY (m_productionplan_id),
  CONSTRAINT m_productionplan_isactive_check CHECK (isactive in ('Y','N'))
)
;

