-- Table: a_asset_reval_index

-- DROP TABLE a_asset_reval_index;

CREATE TABLE a_asset_reval_index FOR SYSTEM NAME asstrevi
(
  a_asset_reval_index_id         FOR COLUMN a_arviid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  a_effective_date               FOR COLUMN a_efdte          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  a_reval_multiplier             FOR COLUMN a_rvmlt         VARCHAR(3) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  a_reval_rate                   FOR COLUMN a_rvrate        DECFLOAT(16) NOT NULL,
  a_reval_code                   FOR COLUMN a_rvcode        VARCHAR(3) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_reval_index_pkey PRIMARY KEY (a_asset_reval_index_id),
  CONSTRAINT a_asset_reval_index_isactive_check CHECK (isactive in ('Y','N'))
)
;

