-- Table: c_projectgroup

-- DROP TABLE c_projectgroup;

CREATE TABLE c_projectgroup FOR SYSTEM NAME cprjgrp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projectgroup_id              FOR COLUMN c_prjgrpid      DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  isdefault                                                 CHAR(1) DEFAULT NULL,
  projectgroupparent_id          FOR COLUMN prjgpid         DECIMAL(10,0),
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0),
  CONSTRAINT c_projectgroup_key PRIMARY KEY (c_projectgroup_id),
  CONSTRAINT c_projectgroup_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_projectgroup_isdefault_check CHECK (isdefault in ('Y','N'))
)
;

