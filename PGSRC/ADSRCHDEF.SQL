-- Table: ad_searchdefinition

-- DROP TABLE ad_searchdefinition;

CREATE TABLE ad_searchdefinition FOR SYSTEM NAME adsrchdef
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_searchdefinition_id         FOR COLUMN ad_sdefid       DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  datatype                                                  VARCHAR(1) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60),
  query                                                     VARCHAR(2000),
  searchtype                                                VARCHAR(1) NOT NULL,
  transactioncode                FOR COLUMN trnactcde       VARCHAR(8),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  po_window_id                   FOR COLUMN po_wid          DECIMAL(10,0),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_searchdefinition_pkey PRIMARY KEY (ad_searchdefinition_id),
  CONSTRAINT ad_searchdefinition_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_searchdefinition_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

