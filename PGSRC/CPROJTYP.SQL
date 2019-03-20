-- Table: c_projecttype

-- DROP TABLE c_projecttype;

CREATE TABLE c_projecttype FOR SYSTEM NAME cprojtyp
(
  c_projecttype_id               FOR COLUMN c_prjtid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  projectcategory                FOR COLUMN prjcat          CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  r_standardrequesttype_id       FOR COLUMN r_stdrtid       DECIMAL(10,0),
  c_projectstatuscategory_id     FOR COLUMN c_prjscid       DECIMAL(10,0),
  copyfrom                                                  CHAR(1) DEFAULT NULL,
  CONSTRAINT c_projecttype_pkey PRIMARY KEY (c_projecttype_id)
)
  ;
