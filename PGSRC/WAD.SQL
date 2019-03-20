-- Table: w_advertisement

-- DROP TABLE w_advertisement;

CREATE TABLE w_advertisement FOR SYSTEM NAME wad
(
  w_advertisement_id             FOR COLUMN w_aid           DECIMAL(10,0) NOT NULL,
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
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'N',
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  w_clickcount_id                FOR COLUMN w_ccid          DECIMAL(10,0),
  w_countercount_id              FOR COLUMN w_ctcid         DECIMAL(10,0),
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  imageurl                                                  VARCHAR(120),
  adtext                                                    VARCHAR(2000),
  webparam1                                                 VARCHAR(2000),
  webparam2                                                 VARCHAR(2000),
  webparam3                                                 VARCHAR(2000),
  webparam4                                                 VARCHAR(2000),
  publishstatus                  FOR COLUMN pubsts          CHAR(1) NOT NULL,
  version                                                   DECIMAL(10,0),
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_advertisement_pkey PRIMARY KEY (w_advertisement_id)
)
;
