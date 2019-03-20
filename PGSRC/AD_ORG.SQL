-- Table: ad_org

-- DROP TABLE ad_org;

CREATE TABLE ad_org
(
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  ad_replicationstrategy_id      FOR COLUMN ad_rsid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_org_pkey PRIMARY KEY (ad_org_id),
  CONSTRAINT ad_org_isactive_check CHECK (isactive in ('Y','N'))
)
;

