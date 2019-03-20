-- Table: a_depreciation_build

-- DROP TABLE a_depreciation_build;

CREATE TABLE a_depreciation_build FOR SYSTEM NAME adepbld
(
  a_depreciation_build_id        FOR COLUMN a_depbldid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  a_end_asset_id                 FOR COLUMN a_endaid        DECIMAL(10,0),
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0),
  createdby                                                 DECIMAL(10,0),
  datedoc                                                   TIMESTAMP,
  periodno                                                  DECIMAL(10,0),
  processed                                                 CHAR(1),
  updated                                                   TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  processing                                                CHAR(1),
  postingtype                    FOR COLUMN posttyp         CHAR(1) DEFAULT 'A',
  isactive                                                  CHAR(1),
  dateacct                                                  TIMESTAMP,
  created                                                   TIMESTAMP,
  a_start_asset_id               FOR COLUMN a_straid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_depreciation_build_pkey PRIMARY KEY (a_depreciation_build_id),
  CONSTRAINT a_depreciation_build_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_depreciation_build_processing_check CHECK (processing in ('Y','N'))
)
;

