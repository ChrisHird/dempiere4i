-- Table: ad_preference

-- DROP TABLE ad_preference;

CREATE TABLE ad_preference FOR SYSTEM NAME adpref
(
  ad_preference_id               FOR COLUMN ad_prefid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  attribute                                                 VARCHAR(60) NOT NULL,
  value                                                     VARCHAR(60) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_preference_pkey PRIMARY KEY (ad_preference_id),
  CONSTRAINT ad_preference_isactive_check CHECK (isactive in ('Y','N'))
)
;

