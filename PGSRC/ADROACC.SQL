-- Table: ad_role_orgaccess

-- DROP TABLE ad_role_orgaccess;

CREATE TABLE ad_role_orgaccess FOR SYSTEM NAME adroacc
(
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_role_orgaccess_pkey PRIMARY KEY (ad_role_id, ad_org_id),
  CONSTRAINT ad_role_orgaccess_isactive_check CHECK (isactive in ('Y','N'))
)
;

