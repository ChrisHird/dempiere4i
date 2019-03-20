-- Table: ad_replication_log

-- DROP TABLE ad_replication_log;

CREATE TABLE ad_replication_log FOR SYSTEM NAME adrepll
(
  ad_replication_log_id          FOR COLUMN ad_replid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_replication_run_id          FOR COLUMN ad_rrid         DECIMAL(10,0) NOT NULL,
  ad_replicationtable_id         FOR COLUMN ad_rtid         DECIMAL(10,0),
  p_msg                                                     VARCHAR(2000),
  isreplicated                   FOR COLUMN isrepd          CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_replication_log_pkey PRIMARY KEY (ad_replication_log_id),
  CONSTRAINT ad_replication_log_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_replication_log_isreplicated_check CHECK (isreplicated in ('Y','N'))
)
;

