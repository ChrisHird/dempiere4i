-- Table: a_asset_info_lic

-- DROP TABLE a_asset_info_lic;

CREATE TABLE a_asset_info_lic FOR SYSTEM NAME aasstilic
(
  a_asset_info_lic_id            FOR COLUMN a_ainflcid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_license_fee                  FOR COLUMN a_licfee        DECFLOAT(16),
  a_renewal_date                 FOR COLUMN a_rnwdte        TIMESTAMP,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  text                                                      VARCHAR(510),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  a_state                                                   VARCHAR(60),
  a_license_no                   FOR COLUMN a_licno         VARCHAR(120),
  a_issuing_agency               FOR COLUMN a_issa          VARCHAR(22),
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  processed                                                 CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_info_lic_pkey PRIMARY KEY (a_asset_info_lic_id),
  CONSTRAINT a_asset_info_lic_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_asset_info_lic_processed_check CHECK (processed in ('Y','N'))
)
;

