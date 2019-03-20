-- Table: a_depreciation_table_header

-- DROP TABLE a_depreciation_table_header;

CREATE TABLE a_depreciation_table_header FOR SYSTEM NAME adepthdr
(
  a_depreciation_table_header_id FOR COLUMN a_deptblhi      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_term                                                    VARCHAR(2) NOT NULL,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  processed                                                 CHAR(1) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(510) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  a_table_rate_type              FOR COLUMN a_tblrttyp      VARCHAR(2) NOT NULL,
  a_depreciation_table_code      FOR COLUMN a_deptblc       VARCHAR(20) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_table_header_pkey PRIMARY KEY (a_depreciation_table_header_id),
  CONSTRAINT a_depreciation_table_header_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_depreciation_table_header_processed_check CHECK (processed in ('Y','N'))
)
;

