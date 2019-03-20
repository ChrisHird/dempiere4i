-- Table: a_depreciation_convention

-- DROP TABLE a_depreciation_convention;

CREATE TABLE a_depreciation_convention FOR SYSTEM NAME adepconv
(
  a_depreciation_convention_id   FOR COLUMN a_depcvid       DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(510),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  conventiontype                 FOR COLUMN convttyp        VARCHAR(10),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  textmsg                                                   VARCHAR(2000),
  name                                                      VARCHAR(120),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_convention_pkey PRIMARY KEY (a_depreciation_convention_id),
  CONSTRAINT a_depreciation_convention_isactive_check CHECK (isactive in ('Y','N'))
)
;

