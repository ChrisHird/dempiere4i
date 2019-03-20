-- Table: a_depreciation_table_detail

-- DROP TABLE a_depreciation_table_detail;

CREATE TABLE a_depreciation_table_detail FOR SYSTEM NAME adeptdet
(
  a_depreciation_table_detail_id FOR COLUMN a_deptbldi      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_period                                                  DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  processed                                                 CHAR(1) NOT NULL,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  a_table_rate_type              FOR COLUMN a_tblrttyp      VARCHAR(2) DEFAULT 'RT',
  a_depreciation_rate            FOR COLUMN a_depr          DECFLOAT(16) NOT NULL,
  a_depreciation_table_code      FOR COLUMN a_deptblc       VARCHAR(20) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_table_detail_pkey PRIMARY KEY (a_depreciation_table_detail_id),
  CONSTRAINT a_depreciation_table_detail_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_depreciation_table_detail_processed_check CHECK (processed in ('Y','N'))
)
;

