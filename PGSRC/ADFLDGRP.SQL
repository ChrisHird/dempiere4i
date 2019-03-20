-- Table: ad_fieldgroup

-- DROP TABLE ad_fieldgroup;

CREATE TABLE ad_fieldgroup FOR SYSTEM NAME adfldgrp
(
  ad_fieldgroup_id               FOR COLUMN ad_fgid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  fieldgrouptype                 FOR COLUMN fldgrptyp       CHAR(1),
  iscollapsedbydefault           FOR COLUMN isclpbdft       CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_fieldgroup_pkey PRIMARY KEY (ad_fieldgroup_id),
  CONSTRAINT ad_fieldgroup_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_fieldgroup_iscollapsedbydefault_check CHECK (iscollapsedbydefault in ('Y','N'))
)
;

