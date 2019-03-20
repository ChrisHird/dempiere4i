-- Table: a_registrationvalue

-- DROP TABLE a_registrationvalue;

CREATE TABLE a_registrationvalue FOR SYSTEM NAME aregval
(
  a_registration_id              FOR COLUMN a_rid           DECIMAL(10,0) NOT NULL,
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
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_registrationvalue_pkey PRIMARY KEY (a_registration_id, a_registrationattribute_id),
  CONSTRAINT a_registrationvalue_isactive_check CHECK (isactive in ('Y','N'))
)
;

