-- Table: a_asset_group

-- DROP TABLE a_asset_group;

CREATE TABLE a_asset_group FOR SYSTEM NAME aasstgrp
(
  a_asset_group_id               FOR COLUMN a_agid          DECIMAL(10,0) NOT NULL,
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
  isowned                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  isdepreciated                  FOR COLUMN isdeptd         CHAR(1) NOT NULL DEFAULT 'Y',
  isoneassetperuom               FOR COLUMN isoaperum       CHAR(1) NOT NULL DEFAULT 'N',
  iscreateasactive               FOR COLUMN iscasact        CHAR(1) NOT NULL DEFAULT 'Y',
  istrackissues                  FOR COLUMN istrckiss       CHAR(1) NOT NULL DEFAULT 'N',
  a_asset_class_id               FOR COLUMN a_aclsid        DECIMAL(10,0),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  a_asset_type_id                FOR COLUMN a_atypid        DECIMAL(10,0),
  isfixedasset                   FOR COLUMN isfxdast        CHAR(1) DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_asset_group_pkey PRIMARY KEY (a_asset_group_id),
  CONSTRAINT a_asset_group_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT a_asset_group_isdefault_check CHECK (isdefault in ('Y','N')),
  CONSTRAINT a_asset_group_isfixedasset_check CHECK (isfixedasset in ('Y','N')),
  CONSTRAINT a_asset_group_isowned_check CHECK (isowned in ('Y','N'))
)
;

