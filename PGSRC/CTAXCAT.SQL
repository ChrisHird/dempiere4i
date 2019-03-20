-- Table: c_taxcategory

-- DROP TABLE c_taxcategory;

CREATE TABLE c_taxcategory FOR SYSTEM NAME ctaxcat
(
  c_taxcategory_id               FOR COLUMN c_tcid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  commoditycode                  FOR COLUMN cmdycde         VARCHAR(20),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_taxcategory_pkey PRIMARY KEY (c_taxcategory_id),
  CONSTRAINT c_taxcategory_isactive_check CHECK (isactive in ('Y','N'))
)
;

