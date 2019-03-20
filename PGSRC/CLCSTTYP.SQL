-- Table: c_landedcosttype

-- DROP TABLE c_landedcosttype;

CREATE TABLE c_landedcosttype FOR SYSTEM NAME clcsttyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_landedcosttype_id            FOR COLUMN c_lcsttid       DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) DEFAULT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  CONSTRAINT c_landedcosttype_key PRIMARY KEY (c_landedcosttype_id),
  CONSTRAINT c_landedcosttype_isactive_check CHECK (isactive in ('Y','N'))
)
;

