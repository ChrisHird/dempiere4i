-- Table: dd_vehicleassignment

-- DROP TABLE dd_vehicleassignment;

CREATE TABLE dd_vehicleassignment FOR SYSTEM NAME ddvhcasn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_vehicleassignment_id        FOR COLUMN dd_vhcaid       DECIMAL(10,0) NOT NULL,
  dd_vehicle_id                  FOR COLUMN dd_vhcid        DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_shipper_id                   FOR COLUMN m_sid           DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_vehicleassignment_key PRIMARY KEY (dd_vehicleassignment_id),
  CONSTRAINT dd_vehicleassignment_isactive_check CHECK (isactive in ('Y','N'))
)
;

