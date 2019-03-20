-- Table: dd_licenseassignment

-- DROP TABLE dd_licenseassignment;

CREATE TABLE dd_licenseassignment FOR SYSTEM NAME ddlicasn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_driver_id                   FOR COLUMN dd_drvid        DECIMAL(10,0),
  dd_licenseassignment_id        FOR COLUMN dd_licaid       DECIMAL(10,0) NOT NULL,
  dd_license_id                  FOR COLUMN dd_licid        DECIMAL(10,0) NOT NULL,
  dd_vehicle_id                  FOR COLUMN dd_vhcid        DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_licenseassignment_key PRIMARY KEY (dd_licenseassignment_id),
  CONSTRAINT dd_licenseassignment_isactive_check CHECK (isactive in ('Y','N'))
)
;

