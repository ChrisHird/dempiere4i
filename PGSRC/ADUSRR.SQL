-- Table: ad_user_roles

-- DROP TABLE ad_user_roles;

CREATE TABLE ad_user_roles FOR SYSTEM NAME adusrr
(
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  isdefault                                                 CHAR(1) DEFAULT NULL,
  CONSTRAINT ad_user_roles_pkey PRIMARY KEY (ad_user_id, ad_role_id),
  CONSTRAINT ad_user_roles_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_user_roles_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

