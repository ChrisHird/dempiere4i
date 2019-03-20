-- Table: k_type

-- DROP TABLE k_type;

CREATE TABLE k_type
(
  k_type_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  ispublic                                                  CHAR(1) NOT NULL DEFAULT 'N',
  ispublicwrite                  FOR COLUMN ispubw          CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_type_pkey PRIMARY KEY (k_type_id),
  CONSTRAINT k_type_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT k_type_ispublic_check CHECK (ispublic in ('Y','N'))
)
;

