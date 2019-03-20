-- Table: ad_replication_run

-- DROP TABLE ad_replication_run;

CREATE TABLE ad_replication_run FOR SYSTEM NAME adreplr
(
  ad_replication_run_id          FOR COLUMN ad_rrid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  ad_replication_id              FOR COLUMN ad_repid        DECIMAL(10,0) NOT NULL,
  isreplicated                   FOR COLUMN isrepd          CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_replication_run_pkey PRIMARY KEY (ad_replication_run_id),
  CONSTRAINT ad_replication_run_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_replication_run_isreplicated_check CHECK (isreplicated in ('Y','N'))
)
;

