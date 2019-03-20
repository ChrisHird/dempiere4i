-- Table: c_projectclass

-- DROP TABLE c_projectclass;

CREATE TABLE c_projectclass FOR SYSTEM NAME cprjcls
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projectclass_id              FOR COLUMN c_prjclsid      DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isdefault                                                 CHAR(1) DEFAULT NULL,
  projectclassparent_id          FOR COLUMN prjclspid       DECIMAL(10,0),
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0),
  CONSTRAINT c_projectclass_key PRIMARY KEY (c_projectclass_id),
  CONSTRAINT c_projectclass_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_projectclass_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

