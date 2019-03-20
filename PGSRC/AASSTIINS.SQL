-- Table: a_asset_info_ins

-- DROP TABLE a_asset_info_ins;

CREATE TABLE a_asset_info_ins FOR SYSTEM NAME aasstiins
(
  a_asset_info_ins_id            FOR COLUMN a_ainfiid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_ins_value                    FOR COLUMN a_insval        DECFLOAT(16),
  a_policy_no                    FOR COLUMN a_polno         VARCHAR(100),
  a_replace_cost                 FOR COLUMN a_repcst        DECFLOAT(16),
  createdby                                                 DECIMAL(10,0) NOT NULL,
  text                                                      VARCHAR(510),
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  a_renewal_date                 FOR COLUMN a_rnwdte        TIMESTAMP,
  a_insurance_co                 FOR COLUMN a_insco         VARCHAR(22),
  a_ins_premium                  FOR COLUMN a_insprm        DECFLOAT(16),
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_info_ins_pkey PRIMARY KEY (a_asset_info_ins_id),
  CONSTRAINT a_asset_info_ins_isactive_check CHECK (isactive in ('Y','N'))
)
;

