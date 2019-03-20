-- Table: wm_strategy

-- DROP TABLE wm_strategy;

CREATE TABLE wm_strategy FOR SYSTEM NAME wmstrat
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  wm_strategy_id                 FOR COLUMN wm_stratid      DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0) NOT NULL,
  inoutboundtype                 FOR COLUMN iobndtyp        CHAR(1) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT wm_strategy_key PRIMARY KEY (wm_strategy_id),
  CONSTRAINT wm_strategy_isactive_check CHECK (isactive in ('Y','N'))
)
;

