-- Table: ad_replicationstrategy

-- DROP TABLE ad_replicationstrategy;

CREATE TABLE ad_replicationstrategy FOR SYSTEM NAME adreplstr
(
  ad_replicationstrategy_id      FOR COLUMN ad_rsid         DECIMAL(10,0) NOT NULL,
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
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  exp_processor_id               FOR COLUMN exp_prcid       DECIMAL(10,0),
  value                                                     VARCHAR(40),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_replicationstrategy_pkey PRIMARY KEY (ad_replicationstrategy_id),
  CONSTRAINT ad_replicationstrategy_isactive_check CHECK (isactive in ('Y','N'))
)
;

