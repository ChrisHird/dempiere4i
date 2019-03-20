-- Table: ad_replicationtable

-- DROP TABLE ad_replicationtable;

CREATE TABLE ad_replicationtable FOR SYSTEM NAME adrepltbl
(
  ad_replicationtable_id         FOR COLUMN ad_rtid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_replicationstrategy_id      FOR COLUMN ad_rsid         DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  replicationtype                FOR COLUMN reptyp          CHAR(1) NOT NULL DEFAULT 'L',
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_replicationtable_pkey PRIMARY KEY (ad_replicationtable_id),
  CONSTRAINT ad_replicationtable_isactive_check CHECK (isactive in ('Y','N'))
)
;

