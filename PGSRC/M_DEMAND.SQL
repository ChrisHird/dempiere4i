-- Table: m_demand

-- DROP TABLE m_demand;

CREATE TABLE m_demand
(
  m_demand_id                    FOR COLUMN m_did           DECIMAL(10,0) NOT NULL,
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
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_calendar_id                  FOR COLUMN c_cid           DECIMAL(10,0) NOT NULL,
  c_year_id                                                 DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_demand_pkey PRIMARY KEY (m_demand_id),
  CONSTRAINT m_demand_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_demand_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

