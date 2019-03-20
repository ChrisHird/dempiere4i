-- Table: c_greeting

-- DROP TABLE c_greeting;

CREATE TABLE c_greeting
(
  c_greeting_id                  FOR COLUMN c_gtgid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  greeting                                                  VARCHAR(60),
  isfirstnameonly                FOR COLUMN isfnonly        CHAR(1) NOT NULL DEFAULT 'N',
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_greeting_pkey PRIMARY KEY (c_greeting_id),
  CONSTRAINT c_greeting_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_greeting_isdefault_check CHECK (isdefault in ('Y','N')),
  CONSTRAINT c_greeting_isfirstnameonly_check CHECK (isfirstnameonly in ('Y','N'))
)
;

