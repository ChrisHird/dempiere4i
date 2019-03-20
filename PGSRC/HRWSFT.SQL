-- Table: hr_workshift

-- DROP TABLE hr_workshift;

CREATE TABLE hr_workshift FOR SYSTEM NAME hrwsft
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_workshift_id                FOR COLUMN hr_wsid         DECIMAL(10,0) NOT NULL,
  shiftfromtime                  FOR COLUMN sftftim         TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  shifttotim                                                TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  noofhours                                                 DECFLOAT(16),
  isovertimeapplicable           FOR COLUMN isotappl        CHAR(1) NOT NULL,
  overtimeamount                 FOR COLUMN otimeamt        DECFLOAT(16),
  name                                                      VARCHAR(40) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(200) DEFAULT NULL,
  hr_shiftgroup_id               FOR COLUMN hr_shiftg       DECIMAL(10,0),
  ishasfixedworkgroup            FOR COLUMN ishfwg          CHAR(1) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  value                                                     VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_workshift_key PRIMARY KEY (hr_workshift_id),
  CONSTRAINT hr_workshift_value UNIQUE (ad_client_id, value),
  CONSTRAINT hr_workshift_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_workshift_ishasfixedworkgroup_check CHECK (ishasfixedworkgroup in ('Y','N')),
  CONSTRAINT hr_workshift_isovertimeapplicable_check CHECK (isovertimeapplicable in ('Y','N'))
)
;

