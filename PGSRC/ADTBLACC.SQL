-- Table: ad_table_access

-- DROP TABLE ad_table_access;

CREATE TABLE ad_table_access FOR SYSTEM NAME adtblacc
(
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  accesstyperule                 FOR COLUMN acstypr         CHAR(1) NOT NULL DEFAULT 'G',
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  iscanreport                    FOR COLUMN iscanrpt        CHAR(1) NOT NULL DEFAULT 'Y',
  iscanexport                    FOR COLUMN iscanexp        CHAR(1) NOT NULL DEFAULT 'Y',
  isexclude                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_table_access_pkey PRIMARY KEY (ad_role_id, ad_table_id, accesstyperule),
  CONSTRAINT ad_table_access_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_table_access_iscanexport_check CHECK (iscanexport in ('Y','N')),
  CONSTRAINT ad_table_access_iscanreport_check CHECK (iscanreport in ('Y','N')),
  CONSTRAINT ad_table_access_isexclude_check CHECK (isexclude in ('Y','N')),
  CONSTRAINT ad_table_access_isreadonly_check CHECK (isreadonly in ('Y','N'))
)
;

