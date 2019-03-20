-- Table: r_issueknown

-- DROP TABLE r_issueknown;

CREATE TABLE r_issueknown FOR SYSTEM NAME risskn
(
  r_issueknown_id                FOR COLUMN r_issknid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  issuesummary                   FOR COLUMN issuesum        VARCHAR(255) NOT NULL,
  releaseno                                                 VARCHAR(10) NOT NULL,
  sourceclassname                FOR COLUMN srcclsnm        VARCHAR(60),
  sourcemethodname               FOR COLUMN srcmthdnm       VARCHAR(60),
  loggername                                                VARCHAR(60),
  lineno                                                    DECIMAL(10,0) DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  issuestatus                    FOR COLUMN issuests        VARCHAR(2000),
  r_issuestatus_id               FOR COLUMN r_issstsid      DECIMAL(10,0),
  r_request_id                   FOR COLUMN r_rid           DECIMAL(10,0),
  processing                                                CHAR(1),
  r_issuerecommendation_id       FOR COLUMN r_issrcmid      DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_issueknown_pkey PRIMARY KEY (r_issueknown_id),
  CONSTRAINT r_issueknown_isactive_check CHECK (isactive in ('Y','N'))
)
;

