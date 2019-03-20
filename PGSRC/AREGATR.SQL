-- Table: a_registrationattribute

-- DROP TABLE a_registrationattribute;

CREATE TABLE a_registrationattribute FOR SYSTEM NAME aregatr
(
  a_registrationattribute_id     FOR COLUMN a_raid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0) NOT NULL,
  columnname                                                VARCHAR(30),
  ad_reference_value_id          FOR COLUMN ad_rvid         DECIMAL(10,0),
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_registrationattribute_pkey PRIMARY KEY (a_registrationattribute_id),
  CONSTRAINT a_registrationattribute_isactive_check CHECK (isactive in ('Y','N'))
)
;

