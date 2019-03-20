-- Table: c_uom

-- DROP TABLE c_uom;

CREATE TABLE c_uom
(
  c_uom_id                                                  DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  x12de355                                                  VARCHAR(4) NOT NULL,
  uomsymbol                                                 VARCHAR(10),
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  stdprecision                   FOR COLUMN stdprec         DECIMAL(10,0) NOT NULL,
  costingprecision               FOR COLUMN cstprec         DECIMAL(10,0) NOT NULL,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uomtype                                                   VARCHAR(2),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_uom_pkey PRIMARY KEY (c_uom_id),
  CONSTRAINT c_uom_isactive_check CHECK (isactive in ('Y','N'))
)
;

