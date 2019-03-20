-- Table: ad_tree_favorite

-- DROP TABLE ad_tree_favorite;

CREATE TABLE ad_tree_favorite FOR SYSTEM NAME adtfav
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  ad_tree_favorite_id            FOR COLUMN ad_trfid        DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_tree_favorite_key PRIMARY KEY (ad_tree_favorite_id),
  CONSTRAINT ad_tree_favorite_isactive_check CHECK (isactive in ('Y','N'))
)
;

