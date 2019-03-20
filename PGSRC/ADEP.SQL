-- Table: a_depreciation

-- DROP TABLE a_depreciation;

CREATE TABLE a_depreciation FOR SYSTEM NAME adep
(
  a_depreciation_id              FOR COLUMN a_did           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(120) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(510),
  depreciationtype               FOR COLUMN deptyp          VARCHAR(10) NOT NULL,
  script                                                    VARCHAR(2000),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  text                                                      VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_pkey PRIMARY KEY (a_depreciation_id),
  CONSTRAINT a_depreciation_isactive_check CHECK (isactive in ('Y','N'))
)
;

