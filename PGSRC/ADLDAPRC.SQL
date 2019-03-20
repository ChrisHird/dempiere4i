-- Table: ad_ldapprocessor

-- DROP TABLE ad_ldapprocessor;

CREATE TABLE ad_ldapprocessor FOR SYSTEM NAME adldaprc
(
  ad_ldapprocessor_id            FOR COLUMN ad_ldappid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ldapport                                                  DECIMAL(10,0) NOT NULL DEFAULT 0,
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  datenextrun                    FOR COLUMN datnxtr         TIMESTAMP,
  supervisor_id                  FOR COLUMN supid           DECIMAL(10,0) NOT NULL,
  keeplogdays                    FOR COLUMN kld             DECIMAL(10,0) NOT NULL DEFAULT 0,
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_ldapprocessor_pkey PRIMARY KEY (ad_ldapprocessor_id),
  CONSTRAINT ad_ldapprocessor_isactive_check CHECK (isactive in ('Y','N'))
)
;

