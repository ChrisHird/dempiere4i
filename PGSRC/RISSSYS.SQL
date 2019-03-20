-- Table: r_issuesystem

-- DROP TABLE r_issuesystem;

CREATE TABLE r_issuesystem FOR SYSTEM NAME risssys
(
  r_issuesystem_id               FOR COLUMN r_isssysid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  dbaddress                                                 VARCHAR(255) NOT NULL,
  statisticsinfo                 FOR COLUMN statsinf        VARCHAR(60),
  profileinfo                    FOR COLUMN prfinfo         VARCHAR(60),
  systemstatus                   FOR COLUMN sysstatus       CHAR(1) NOT NULL,
  a_asset_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_issuesystem_pkey PRIMARY KEY (r_issuesystem_id),
  CONSTRAINT r_issuesystem_isactive_check CHECK (isactive in ('Y','N'))
)
;

