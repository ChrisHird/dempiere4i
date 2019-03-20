-- Table: c_taxbase

-- DROP TABLE c_taxbase;

CREATE TABLE c_taxbase
(
  name                                                      VARCHAR(60) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  base                                                      CHAR(1),
  c_taxbase_id                   FOR COLUMN c_tbid          DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL,
  percentage                                                DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_taxbase_pkey PRIMARY KEY (c_taxbase_id),
  CONSTRAINT c_taxbase_isactive_check CHECK (isactive in ('Y','N'))
)
;

