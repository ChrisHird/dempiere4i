-- Table: r_issueproject

-- DROP TABLE r_issueproject;

CREATE TABLE r_issueproject FOR SYSTEM NAME rissprj
(
  r_issueproject_id              FOR COLUMN r_issprjid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  a_asset_id                                                DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  statisticsinfo                 FOR COLUMN statsinf        VARCHAR(60),
  profileinfo                    FOR COLUMN prfinfo         VARCHAR(60),
  systemstatus                   FOR COLUMN sysstatus       CHAR(1) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_issueproject_pkey PRIMARY KEY (r_issueproject_id),
  CONSTRAINT r_issueproject_isactive_check CHECK (isactive in ('Y','N'))
)
;

