-- Table: dd_compatibilitygroup

-- DROP TABLE dd_compatibilitygroup;

CREATE TABLE dd_compatibilitygroup FOR SYSTEM NAME ddcptgrp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dd_compatibilitygroup_id       FOR COLUMN dd_cmygid       DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT dd_compatibilitygroup_key PRIMARY KEY (dd_compatibilitygroup_id),
  CONSTRAINT dd_compatibilitygroup_isactive_check CHECK (isactive in ('Y','N'))
)
;

