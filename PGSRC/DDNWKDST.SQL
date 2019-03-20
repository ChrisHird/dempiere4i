-- Table: dd_networkdistribution

-- DROP TABLE dd_networkdistribution;

CREATE TABLE dd_networkdistribution FOR SYSTEM NAME ddnwkdst
(
  validfrom                                                 TIMESTAMP,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  copyfrom                                                  CHAR(1),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validto                                                   TIMESTAMP,
  dd_networkdistribution_id      FOR COLUMN dd_ndid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL,
  m_changenotice_id              FOR COLUMN m_chgnid        DECIMAL(10,0),
  processing                                                CHAR(1),
  value                                                     VARCHAR(80) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  documentno                                                VARCHAR(22),
  revision                                                  VARCHAR(10),
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_networkdistribution_pkey PRIMARY KEY (dd_networkdistribution_id),
  CONSTRAINT dd_networkdistribution_isactive_check CHECK (isactive in ('Y','N'))
)
;

