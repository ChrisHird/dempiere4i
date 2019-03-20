-- Table: ad_replicationroleaccess

-- DROP TABLE ad_replicationroleaccess;

CREATE TABLE ad_replicationroleaccess FOR SYSTEM NAME adrepra
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_replicationroleaccess_id    FOR COLUMN ad_repraid      DECIMAL(10,0) NOT NULL,
  ad_replicationstrategy_id      FOR COLUMN ad_rsid         DECIMAL(10,0),
  ad_role_id                                                DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isreadonly                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_replicationroleaccess_key PRIMARY KEY (ad_replicationroleaccess_id),
  CONSTRAINT ad_replicationroleaccess_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_replicationroleaccess_isreadonly_check CHECK (isreadonly in ('Y','N'))
)
;

