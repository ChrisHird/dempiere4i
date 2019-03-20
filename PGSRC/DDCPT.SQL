-- Table: dd_compartment

-- DROP TABLE dd_compartment;

CREATE TABLE dd_compartment FOR SYSTEM NAME ddcpt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_compartment_id              FOR COLUMN cc_cpid         DECIMAL(10,0) NOT NULL,
  dd_compatibilitygroup_id       FOR COLUMN dd_cmygid       DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  documentnote                   FOR COLUMN docnote         VARCHAR(2000),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  maximumvolume                  FOR COLUMN maxvol          DECFLOAT(16),
  minimumvolume                  FOR COLUMN minvol          DECFLOAT(16),
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  volume_uom_id                  FOR COLUMN vol_umid     DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_compartment_key PRIMARY KEY (dd_compartment_id),
  CONSTRAINT dd_compartment_isactive_check CHECK (isactive in ('Y','N'))
)
;

