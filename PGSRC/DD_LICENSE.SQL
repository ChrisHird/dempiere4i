-- Table: dd_license

-- DROP TABLE dd_license;

CREATE TABLE dd_license
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_licensetype_id              FOR COLUMN dd_lictid       DECIMAL(10,0) NOT NULL,
  dd_license_id                  FOR COLUMN dd_licid        DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  value                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_license_key PRIMARY KEY (dd_license_id),
  CONSTRAINT dd_license_isactive_check CHECK (isactive in ('Y','N'))
)
;

