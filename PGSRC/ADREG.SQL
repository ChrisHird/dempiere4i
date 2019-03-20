-- Table: ad_registration

-- DROP TABLE ad_registration;

CREATE TABLE ad_registration FOR SYSTEM NAME adreg
(
  ad_registration_id             FOR COLUMN ad_regid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_system_id                   FOR COLUMN ad_sysid        DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isregistered                   FOR COLUMN isreg           CHAR(1) NOT NULL DEFAULT 'N',
  record_id                                                 DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0),
  isinproduction                 FOR COLUMN isinprod        CHAR(1) NOT NULL DEFAULT 'N',
  startproductiondate            FOR COLUMN soprddte        TIMESTAMP,
  isallowpublish                 FOR COLUMN isalwpub        CHAR(1) NOT NULL DEFAULT 'Y',
  isallowstatistics              FOR COLUMN isalwstat       CHAR(1) NOT NULL DEFAULT 'Y',
  platforminfo                   FOR COLUMN pltfminf        VARCHAR(255),
  industryinfo                   FOR COLUMN indinf          VARCHAR(255),
  salesvolume                    FOR COLUMN salesvol        DECIMAL(10,0) DEFAULT 0,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  numberemployees                FOR COLUMN numemp          DECIMAL(10,0) DEFAULT 0,
  processing                                                CHAR(1),
  remote_host                    FOR COLUMN rmthost         VARCHAR(120),
  remote_addr                    FOR COLUMN rmtaddr         VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_registration_pkey PRIMARY KEY (ad_registration_id, ad_client_id, ad_system_id),
  CONSTRAINT ad_registration_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_registration_isallowpublish_check CHECK (isallowpublish in ('Y','N')),
  CONSTRAINT ad_registration_isallowstatistics_check CHECK (isallowstatistics in ('Y','N')),
  CONSTRAINT ad_registration_isinproduction_check CHECK (isinproduction in ('Y','N')),
  CONSTRAINT ad_registration_isregistered_check CHECK (isregistered in ('Y','N'))
)
;

