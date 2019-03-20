-- Table: ad_column_access

-- DROP TABLE ad_column_access;

CREATE TABLE ad_column_access FOR SYSTEM NAME adcolacc
(
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  isexclude                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_column_access_pkey PRIMARY KEY (ad_role_id, ad_column_id)
)
;
