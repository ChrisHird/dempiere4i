-- Table: hr_shiftgroup

-- DROP TABLE hr_shiftgroup;

CREATE TABLE hr_shiftgroup FOR SYSTEM NAME hrsftgrp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_shiftgroup_id               FOR COLUMN hr_shiftg       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(50) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(50) DEFAULT NULL,
  noofhoursthisshift             FOR COLUMN nohts           DECFLOAT(16),
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_shiftgroup_key PRIMARY KEY (hr_shiftgroup_id),
  CONSTRAINT hr_shiftgroup_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_shiftgroup_isactive_check CHECK (isactive in ('Y','N'))
)
;

