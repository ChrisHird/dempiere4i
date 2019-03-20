-- Table: dd_transportunittype

-- DROP TABLE dd_transportunittype;

CREATE TABLE dd_transportunittype FOR SYSTEM NAME ddtptutyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_transportunittype_id        FOR COLUMN dd_trputid      DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  dimension_uom_id               FOR COLUMN dimuomid        DECIMAL(10,0) NOT NULL,
  hasvaporrecoverysystem         FOR COLUMN hasvrsys        CHAR(1),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  transportmode                  FOR COLUMN tspmode         VARCHAR(3) NOT NULL,
  transportphysicaltype          FOR COLUMN tspptyp         VARCHAR(3) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  volume_uom_id                  FOR COLUMN vol_umid     DECIMAL(10,0) NOT NULL,
  weight_uom_id                  FOR COLUMN wgtumid         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_transportunittype_key PRIMARY KEY (dd_transportunittype_id),
  CONSTRAINT dd_transportunittype_hasvaporrecoverysystem_check CHECK (hasvaporrecoverysystem in ('Y','N')),
  CONSTRAINT dd_transportunittype_isactive_check CHECK (isactive in ('Y','N'))
)
;

