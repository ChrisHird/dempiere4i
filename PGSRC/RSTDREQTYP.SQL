-- Table: r_standardrequesttype

-- DROP TABLE r_standardrequesttype;

CREATE TABLE r_standardrequesttype FOR SYSTEM NAME rstdreqtyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  r_standardrequesttype_id       FOR COLUMN r_stdrtid       DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  docstatus                                                 VARCHAR(2) DEFAULT NULL,
  eventmodelvalidator            FOR COLUMN evtmval         VARCHAR(4) NOT NULL,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  issotrx                                                   CHAR(1) DEFAULT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000) DEFAULT NULL,
  CONSTRAINT r_standardrequesttype_key PRIMARY KEY (r_standardrequesttype_id),
  CONSTRAINT r_standardrequesttype_isactive_check CHECK (isactive in ('Y','N'))
)
;

