-- Table: dd_compartmentassignment

-- DROP TABLE dd_compartmentassignment;

CREATE TABLE dd_compartmentassignment FOR SYSTEM NAME ddcptasn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_compartmentassignment_id    FOR COLUMN cc_cpaid        DECIMAL(10,0) NOT NULL,
  dd_compartment_id              FOR COLUMN cc_cpid         DECIMAL(10,0),
  dd_transportunit_id            FOR COLUMN dd_trpuid       DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  seqno                                                     DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_compartmentassignment_key PRIMARY KEY (dd_compartmentassignment_id),
  CONSTRAINT dd_compartmentassignment_isactive_check CHECK (isactive in ('Y','N'))
)
;

