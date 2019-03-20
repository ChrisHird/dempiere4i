-- Table: c_region

-- DROP TABLE c_region;

CREATE TABLE c_region
(
  c_region_id                    FOR COLUMN c_rid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_country_id                   FOR COLUMN c_cntyid        DECIMAL(10,0) NOT NULL,
  isdefault                                                 CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_region_pkey PRIMARY KEY (c_region_id),
  CONSTRAINT c_region_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_region_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

