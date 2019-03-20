-- Table: c_projectmembertype

-- DROP TABLE c_projectmembertype;

CREATE TABLE c_projectmembertype FOR SYSTEM NAME cprjmbrtyp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projectmembertype_id         FOR COLUMN c_prjmtid       DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  isdefault                                                 CHAR(1) DEFAULT 'N',
  CONSTRAINT c_projectmembertype_key PRIMARY KEY (c_projectmembertype_id),
  CONSTRAINT c_projectmembertype_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_projectmembertype_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

