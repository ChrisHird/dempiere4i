-- Table: a_asset_info_oth

-- DROP TABLE a_asset_info_oth;

CREATE TABLE a_asset_info_oth FOR SYSTEM NAME asstioth
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0) NOT NULL,
  a_asset_info_oth_id            FOR COLUMN a_ainfoid       DECIMAL(10,0) NOT NULL,
  a_user1                                                   VARCHAR(3),
  a_user10                                                  VARCHAR(3),
  a_user11                                                  VARCHAR(10),
  a_user12                                                  VARCHAR(10),
  a_user13                                                  VARCHAR(10),
  a_user14                                                  VARCHAR(10),
  a_user15                                                  VARCHAR(10),
  a_user2                                                   VARCHAR(3),
  a_user3                                                   VARCHAR(3),
  a_user4                                                   VARCHAR(3),
  a_user5                                                   VARCHAR(3),
  a_user6                                                   VARCHAR(3),
  a_user7                                                   VARCHAR(3),
  a_user8                                                   VARCHAR(3),
  a_user9                                                   VARCHAR(3),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  text                                                      VARCHAR(510),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_info_oth_pkey PRIMARY KEY (ad_client_id),
  CONSTRAINT a_asset_info_oth_isactive_check CHECK (isactive in ('Y','N'))
)
;

