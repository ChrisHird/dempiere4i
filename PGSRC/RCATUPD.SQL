-- Table: r_categoryupdates

-- DROP TABLE r_categoryupdates;

CREATE TABLE r_categoryupdates FOR SYSTEM NAME rcatupd
(
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  r_category_id                  FOR COLUMN r_catid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_categoryupdates_pkey PRIMARY KEY (ad_user_id, r_category_id),
  CONSTRAINT r_categoryupdates_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT r_categoryupdates_isselfservice_check CHECK (isselfservice in ('Y','N'))
)
;

