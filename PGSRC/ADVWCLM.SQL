-- Table: ad_view_column

-- DROP TABLE ad_view_column;

CREATE TABLE ad_view_column FOR SYSTEM NAME advwclm
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_view_column_id              FOR COLUMN ad_vwcid        DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_view_definition_id          FOR COLUMN ad_vwdid        DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  entitytype                                                VARCHAR(40) NOT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  columnsql                                                 VARCHAR(2000) DEFAULT NULL,
  columnname                                                VARCHAR(255),
  ad_view_id                                                DECIMAL(10,0),
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_view_column_key PRIMARY KEY (ad_view_column_id),
  CONSTRAINT ad_view_column_isactive_check CHECK (isactive in ('Y','N'))
)
;

