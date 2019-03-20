-- Table: ad_ldapaccess

-- DROP TABLE ad_ldapaccess;

CREATE TABLE ad_ldapaccess FOR SYSTEM NAME adldapac
(
  ad_ldapaccess_id               FOR COLUMN ad_ldapaid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_ldapprocessor_id            FOR COLUMN ad_ldappid      DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  r_interestarea_id              FOR COLUMN r_iaid          DECIMAL(10,0),
  iserror                                                   CHAR(1) NOT NULL DEFAULT 'N',
  summary                                                   VARCHAR(2000),
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_ldapaccess_pkey PRIMARY KEY (ad_ldapaccess_id),
  CONSTRAINT ad_ldapaccess_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_ldapaccess_iserror_check CHECK (iserror in ('Y','N'))
)
;

