-- Table: dd_transportunit

-- DROP TABLE dd_transportunit;

CREATE TABLE dd_transportunit FOR SYSTEM NAME ddtptu
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  a_asset_id                                                DECIMAL(10,0),
  axlesnumber                    FOR COLUMN axlesnum        DECFLOAT(16),
  carriernumber                  FOR COLUMN carnum          VARCHAR(30),
  copyfrom                                                  CHAR(1),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_compatibilitygroup_id       FOR COLUMN dd_cmygid       DECIMAL(10,0),
  dd_transportunittype_id        FOR COLUMN dd_trputid      DECIMAL(10,0) NOT NULL,
  dd_transportunit_id            FOR COLUMN dd_trpuid       DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  dimension_uom_id               FOR COLUMN dimuomid        DECIMAL(10,0) NOT NULL,
  documentnote                   FOR COLUMN docnote         VARCHAR(2000),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  maximumvolume                  FOR COLUMN maxvol          DECFLOAT(16),
  maximumweight                  FOR COLUMN maxwght         DECFLOAT(16),
  minimumvolume                  FOR COLUMN minvol          DECFLOAT(16),
  minimumweight                  FOR COLUMN minwght         DECFLOAT(16),
  name                                                      VARCHAR(60) NOT NULL,
  transportheight                FOR COLUMN tsphgt          DECFLOAT(16),
  transportlength                FOR COLUMN tsplen          DECFLOAT(16),
  transportstatus                FOR COLUMN tspsts          VARCHAR(3) NOT NULL,
  transportwidth                 FOR COLUMN tspwdth         DECFLOAT(16),
  unladenweight                  FOR COLUMN unladenwgt      DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  volume                                                    DECFLOAT(16),
  volume_uom_id                  FOR COLUMN vol_umid     DECIMAL(10,0) NOT NULL,
  weight                                                    DECFLOAT(16),
  weight_uom_id                  FOR COLUMN wgtumid         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_transportunit_key PRIMARY KEY (dd_transportunit_id),
  CONSTRAINT dd_transportunit_isactive_check CHECK (isactive in ('Y','N'))
)
;

