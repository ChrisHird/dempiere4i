-- Table: c_city

-- DROP TABLE c_city;

CREATE TABLE c_city
(
  c_city_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  locode                                                    VARCHAR(10),
  coordinates                    FOR COLUMN cords           VARCHAR(15),
  postal                                                    VARCHAR(10),
  areacode                                                  VARCHAR(10),
  c_country_id                   FOR COLUMN c_cntyid        DECIMAL(10,0),
  c_region_id                    FOR COLUMN c_rid           DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_city_pkey PRIMARY KEY (c_city_id),
  CONSTRAINT c_city_isactive_check CHECK (isactive in ('Y','N'))
)
;

