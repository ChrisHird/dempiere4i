-- Table: c_projectstatus

-- DROP TABLE c_projectstatus;

CREATE TABLE c_projectstatus FOR SYSTEM NAME cprjsts
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projectstatus_id             FOR COLUMN c_prjstsid      DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  isdefault                                                 CHAR(1) DEFAULT NULL,
  isclosed                                                  CHAR(1) DEFAULT NULL,
  isfinalclose                   FOR COLUMN isfnalcl        CHAR(1) DEFAULT NULL,
  isopen                                                    CHAR(1) DEFAULT NULL,
  seqno                                                     DECIMAL(10,0),
  next_status_id                 FOR COLUMN next_stsid      DECIMAL(10,0),
  c_projectstatuscategory_id     FOR COLUMN c_prjscid       DECIMAL(10,0),
  CONSTRAINT c_projectstatus_key PRIMARY KEY (c_projectstatus_id),
  CONSTRAINT c_projectstatus_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_projectstatus_isclosed_check CHECK (isclosed in ('Y','N')),
  CONSTRAINT c_projectstatus_isdefault_check CHECK (isdefault in ('Y','N')),
  CONSTRAINT c_projectstatus_isfinalclose_check CHECK (isfinalclose in ('Y','N')),
  CONSTRAINT c_projectstatus_isopen_check CHECK (isopen in ('Y','N'))
)
;

