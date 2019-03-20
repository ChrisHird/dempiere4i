-- Table: ad_replication

-- DROP TABLE ad_replication;

CREATE TABLE ad_replication FOR SYSTEM NAME adrepl
(
  ad_replication_id              FOR COLUMN ad_repid        DECIMAL(10,0) NOT NULL,
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
  hostaddress                    FOR COLUMN hostaddr        VARCHAR(60) NOT NULL,
  hostport                                                  DECIMAL(10,0) NOT NULL,
  ad_replicationstrategy_id      FOR COLUMN ad_rsid         DECIMAL(10,0) NOT NULL,
  isrmioverhttp                  FOR COLUMN isrmohtp        CHAR(1) NOT NULL DEFAULT 'Y',
  processing                                                CHAR(1),
  idrangestart                   FOR COLUMN idrstr          DECFLOAT(16),
  idrangeend                                                DECFLOAT(16),
  remote_client_id               FOR COLUMN rmtclnt         DECIMAL(10,0),
  remote_org_id                  FOR COLUMN rmtorgid        DECIMAL(10,0),
  prefix                                                    VARCHAR(10),
  suffix                                                    VARCHAR(10),
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_replication_pkey PRIMARY KEY (ad_replication_id),
  CONSTRAINT ad_replication_isactive_check CHECK (isactive in ('Y','N'))
)
;

