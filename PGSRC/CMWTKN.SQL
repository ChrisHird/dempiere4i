-- Table: cm_wikitoken

-- DROP TABLE cm_wikitoken;

CREATE TABLE cm_wikitoken FOR SYSTEM NAME cmwtkn
(
  cm_wikitoken_id                FOR COLUMN cm_wikitid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  tokentype                                                 CHAR(1) NOT NULL,
  selectclause                   FOR COLUMN sltclse         VARCHAR(2000),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000),
  macro                                                     VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_wikitoken_pkey PRIMARY KEY (cm_wikitoken_id),
  CONSTRAINT cm_wikitoken_isactive_check CHECK (isactive in ('Y','N'))
)
;

