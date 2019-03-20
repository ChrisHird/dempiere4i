-- Table: a_asset_spread

-- DROP TABLE a_asset_spread;

CREATE TABLE a_asset_spread FOR SYSTEM NAME aasstsprd
(
  a_asset_spread_id              FOR COLUMN a_aspdid        DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  a_asset_spread_type            FOR COLUMN a_aspdtyp       VARCHAR(20),
  a_period_10                    FOR COLUMN a_pd10          DECFLOAT(16) NOT NULL,
  a_period_12                    FOR COLUMN a_pd12          DECFLOAT(16) NOT NULL,
  a_period_14                    FOR COLUMN a_pd14          DECFLOAT(16) NOT NULL,
  a_period_3                                                DECFLOAT(16) NOT NULL,
  a_period_5                                                DECFLOAT(16) NOT NULL,
  a_period_7                                                DECFLOAT(16) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  a_period_9                                                DECFLOAT(16) NOT NULL,
  a_period_8                                                DECFLOAT(16) NOT NULL,
  a_period_6                                                DECFLOAT(16) NOT NULL,
  a_period_4                                                DECFLOAT(16) NOT NULL,
  a_period_2                                                DECFLOAT(16) NOT NULL,
  a_period_13                    FOR COLUMN a_pd13          DECFLOAT(16) NOT NULL,
  a_period_11                    FOR COLUMN a_pd11          DECFLOAT(16) NOT NULL,
  a_period_1                                                DECFLOAT(16) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_spread_pkey PRIMARY KEY (a_asset_spread_id),
  CONSTRAINT a_asset_spread_isactive_check CHECK (isactive in ('Y','N'))
)
;

