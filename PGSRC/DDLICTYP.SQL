-- Table: dd_licensetype

-- DROP TABLE dd_licensetype;

CREATE TABLE dd_licensetype FOR SYSTEM NAME ddlictyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_licensetype_id              FOR COLUMN dd_lictid       DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  transportlicensetype           FOR COLUMN tsplictyp       CHAR(1) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_licensetype_key PRIMARY KEY (dd_licensetype_id),
  CONSTRAINT dd_licensetype_isactive_check CHECK (isactive in ('Y','N'))
)
;

