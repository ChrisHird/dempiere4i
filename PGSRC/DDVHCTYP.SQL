-- Table: dd_vehicletype

-- DROP TABLE dd_vehicletype;

CREATE TABLE dd_vehicletype FOR SYSTEM NAME ddvhctyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_vehicletype_id              FOR COLUMN dd_vhctid       DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  vehicletype                    FOR COLUMN vhctype         VARCHAR(3) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_vehicletype_key PRIMARY KEY (dd_vehicletype_id),
  CONSTRAINT dd_vehicletype_isactive_check CHECK (isactive in ('Y','N'))
)
;

