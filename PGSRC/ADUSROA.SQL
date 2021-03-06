-- Table: ad_user_orgaccess

-- DROP TABLE ad_user_orgaccess;

CREATE TABLE ad_user_orgaccess FOR SYSTEM NAME adusroa
(
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_user_orgaccess_pkey PRIMARY KEY (ad_user_id, ad_org_id),
  CONSTRAINT ad_user_orgaccess_isactive_check CHECK (isactive in ('Y','N'))
)
;

