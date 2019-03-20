-- Table: r_issuesource

-- DROP TABLE r_issuesource;

CREATE TABLE r_issuesource FOR SYSTEM NAME risssrc
(
  r_issuesource_id               FOR COLUMN r_isssrcid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  r_issuesystem_id               FOR COLUMN r_isssysid      DECIMAL(10,0) NOT NULL,
  r_issueproject_id              FOR COLUMN r_issprjid      DECIMAL(10,0) NOT NULL,
  r_issueuser_id                 FOR COLUMN r_issusrid      DECIMAL(10,0) NOT NULL,
  statisticsinfo                 FOR COLUMN statsinf        VARCHAR(60),
  profileinfo                    FOR COLUMN prfinfo         VARCHAR(60),
  CONSTRAINT r_issuesource_pkey PRIMARY KEY (r_issuesource_id),
  CONSTRAINT r_issuesource_isactive_check CHECK (isactive in ('Y','N'))
)
;

