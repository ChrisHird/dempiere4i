-- Table: wm_strategy_detail

-- DROP TABLE wm_strategy_detail;

CREATE TABLE wm_strategy_detail FOR SYSTEM NAME wmstratd
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  wm_strategy_detail_id          FOR COLUMN wm_stratdi     DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  wm_rule_id                                                DECIMAL(10,0),
  wm_strategy_id                 FOR COLUMN wm_stratid      DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT wm_strategy_detail_key PRIMARY KEY (wm_strategy_detail_id),
  CONSTRAINT wm_strategy_detail_isactive_check CHECK (isactive in ('Y','N'))
)
;

