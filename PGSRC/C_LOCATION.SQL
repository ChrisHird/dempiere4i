-- Table: c_location

-- DROP TABLE c_location;

CREATE TABLE c_location
(
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  address1                                                  VARCHAR(60),
  address2                                                  VARCHAR(60),
  city                                                      VARCHAR(60),
  postal                                                    VARCHAR(10),
  postal_add                                                VARCHAR(10),
  c_country_id                   FOR COLUMN c_cntyid        DECIMAL(10,0) NOT NULL,
  c_region_id                    FOR COLUMN c_rid           DECIMAL(10,0),
  c_city_id                                                 DECIMAL(10,0),
  regionname                                                VARCHAR(40),
  address3                                                  VARCHAR(60),
  address4                                                  VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_location_pkey PRIMARY KEY (c_location_id),
  CONSTRAINT c_location_isactive_check CHECK (isactive in ('Y','N'))
)
;

