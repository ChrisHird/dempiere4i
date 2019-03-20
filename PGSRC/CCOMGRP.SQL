-- Table: c_commissiongroup

-- DROP TABLE c_commissiongroup;

CREATE TABLE c_commissiongroup FOR SYSTEM NAME ccomgrp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_commissiongroup_id           FOR COLUMN c_comgid        DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL DEFAULT 'M',
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(60) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_commissiongroup_key PRIMARY KEY (c_commissiongroup_id),
  CONSTRAINT c_commissiongroup_isactive_check CHECK (isactive in ('Y','N'))
)
;

