-- Table: ad_replicationorgaccess

-- DROP TABLE ad_replicationorgaccess;

CREATE TABLE ad_replicationorgaccess FOR SYSTEM NAME adrepoa
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_replicationorgaccess_id     FOR COLUMN ad_repoaid      DECIMAL(10,0) NOT NULL,
  ad_replicationstrategy_id      FOR COLUMN ad_rsid         DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isreadonly                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_replicationorgaccess_key PRIMARY KEY (ad_replicationorgaccess_id),
  CONSTRAINT ad_replicationorgaccess_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_replicationorgaccess_isreadonly_check CHECK (isreadonly in ('Y','N'))
)
;

