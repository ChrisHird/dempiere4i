-- Table: c_conversiontype

-- DROP TABLE c_conversiontype;

CREATE TABLE c_conversiontype FOR SYSTEM NAME ccvntyp
(
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_conversiontype_pkey PRIMARY KEY (c_conversiontype_id),
  CONSTRAINT c_conversiontype_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

