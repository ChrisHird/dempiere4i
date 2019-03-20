-- Table: dd_vehicle

-- DROP TABLE dd_vehicle;

CREATE TABLE dd_vehicle
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0),
  compartmentsnumber             FOR COLUMN cmptnum         DECIMAL(10,0),
  copyfrom                                                  CHAR(1),
  createfrom                                                CHAR(1),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_compatibilitygroup_id       FOR COLUMN dd_cmygid       DECIMAL(10,0),
  dd_vehicletype_id              FOR COLUMN dd_vhctid       DECIMAL(10,0) NOT NULL,
  dd_vehicle_id                  FOR COLUMN dd_vhcid        DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  dimension_uom_id               FOR COLUMN dimuomid        DECIMAL(10,0) NOT NULL,
  documentnote                   FOR COLUMN docnote         VARCHAR(2000),
  generateto                                                CHAR(1) DEFAULT 'N',
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  maximumvolume                  FOR COLUMN maxvol          DECFLOAT(16),
  maximumweight                  FOR COLUMN maxwght         DECFLOAT(16),
  minimumvolume                  FOR COLUMN minvol          DECFLOAT(16),
  minimumweight                  FOR COLUMN minwght         DECFLOAT(16),
  name                                                      VARCHAR(60) NOT NULL,
  transportheight                FOR COLUMN tsphgt          DECFLOAT(16),
  transportlength                FOR COLUMN tsplen          DECFLOAT(16),
  transportwidth                 FOR COLUMN tspwdth         DECFLOAT(16),
  unladenweight                  FOR COLUMN unladenwgt      DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  vehiclestatus                  FOR COLUMN vhcstatus       VARCHAR(3) NOT NULL,
  volume                                                    DECFLOAT(16),
  volume_uom_id                  FOR COLUMN vol_umid     DECIMAL(10,0) NOT NULL,
  weight                                                    DECFLOAT(16),
  weight_uom_id                  FOR COLUMN wgtumid         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_vehicle_key PRIMARY KEY (dd_vehicle_id),
  CONSTRAINT dd_vehicle_isactive_check CHECK (isactive in ('Y','N'))
)
;

