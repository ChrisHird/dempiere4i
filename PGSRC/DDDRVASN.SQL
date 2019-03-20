-- Table: dd_driverassignment

-- DROP TABLE dd_driverassignment;

CREATE TABLE dd_driverassignment FOR SYSTEM NAME dddrvasn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_driverassignment_id         FOR COLUMN dd_drvaid       DECIMAL(10,0) NOT NULL,
  dd_driver_id                   FOR COLUMN dd_drvid        DECIMAL(10,0),
  dd_vehicle_id                  FOR COLUMN dd_vhcid        DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_driverassignment_key PRIMARY KEY (dd_driverassignment_id),
  CONSTRAINT dd_driverassignment_isactive_check CHECK (isactive in ('Y','N'))
)
;

