-- Table: ad_record_access

-- DROP TABLE ad_record_access;

CREATE TABLE ad_record_access FOR SYSTEM NAME adrcdacc
(
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  isexclude                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  isdependententities            FOR COLUMN isdptent        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_record_access_pkey PRIMARY KEY (ad_role_id, ad_table_id, record_id),
  CONSTRAINT ad_record_access_isdependententities_check CHECK (isdependententities in ('Y','N'))
)
;

