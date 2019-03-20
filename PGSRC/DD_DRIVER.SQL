-- Table: dd_driver

-- DROP TABLE dd_driver;

CREATE TABLE dd_driver
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  copyfrom                                                  CHAR(1),
  createfrom                                                CHAR(1) DEFAULT 'N',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_driver_id                   FOR COLUMN dd_drvid        DECIMAL(10,0) NOT NULL,
  driverstatus                   FOR COLUMN drvstatus       VARCHAR(3) NOT NULL,
  generateto                                                CHAR(1),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  name2                                                     VARCHAR(60),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_driver_key PRIMARY KEY (dd_driver_id),
  CONSTRAINT dd_driver_isactive_check CHECK (isactive in ('Y','N'))
)
;

