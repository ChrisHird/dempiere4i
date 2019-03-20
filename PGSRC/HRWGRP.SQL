-- Table: hr_workgroup

-- DROP TABLE hr_workgroup;

CREATE TABLE hr_workgroup FOR SYSTEM NAME hrwgrp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_workgroup_id                FOR COLUMN hr_wgrpid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(40) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(200) DEFAULT NULL,
  isshiftallocation              FOR COLUMN isshftalc       CHAR(1) NOT NULL,
  hr_workshift_id                FOR COLUMN hr_wsid         DECIMAL(10,0),
  hr_shiftgroup_id               FOR COLUMN hr_shiftg       DECIMAL(10,0),
  seqno                                                     DECIMAL(10,0),
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_workgroup_key PRIMARY KEY (hr_workgroup_id),
  CONSTRAINT hr_workgroup_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_workgroup_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_workgroup_isshiftallocation_check CHECK (isshiftallocation in ('Y','N'))
)
;

