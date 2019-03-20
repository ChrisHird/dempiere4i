-- Table: dd_requirementassignment

-- DROP TABLE dd_requirementassignment;

CREATE TABLE dd_requirementassignment FOR SYSTEM NAME ddreqasn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_driver_id                   FOR COLUMN dd_drvid        DECIMAL(10,0),
  dd_requirementassignment_id    FOR COLUMN dd_reqaid       DECIMAL(10,0) NOT NULL,
  dd_requirement_id              FOR COLUMN dd_reqid        DECIMAL(10,0),
  dd_vehicle_id                  FOR COLUMN dd_vhcid        DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isvalid                                                   CHAR(1),
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_requirementassignment_key PRIMARY KEY (dd_requirementassignment_id),
  CONSTRAINT dd_requirementassignment_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT dd_requirementassignment_isvalid_check CHECK (isvalid in ('Y','N'))
)
;

