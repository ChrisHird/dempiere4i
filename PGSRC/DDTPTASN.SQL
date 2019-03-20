-- Table: dd_transportassignment

-- DROP TABLE dd_transportassignment;

CREATE TABLE dd_transportassignment FOR SYSTEM NAME ddtptasn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_transportassignment_id      FOR COLUMN dd_trpaid       DECIMAL(10,0) NOT NULL,
  dd_transportunit_id            FOR COLUMN dd_trpuid       DECIMAL(10,0),
  dd_vehicle_id                  FOR COLUMN dd_vhcid        DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_transportassignment_key PRIMARY KEY (dd_transportassignment_id),
  CONSTRAINT dd_transportassignment_isactive_check CHECK (isactive in ('Y','N'))
)
;

