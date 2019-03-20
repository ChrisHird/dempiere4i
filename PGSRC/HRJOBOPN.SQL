-- Table: hr_jobopening

-- DROP TABLE hr_jobopening;

CREATE TABLE hr_jobopening FOR SYSTEM NAME hrjobopn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_jobopening_id               FOR COLUMN hr_jobopid      DECIMAL(10,0) NOT NULL,
  hr_department_id               FOR COLUMN hr_deptid       DECIMAL(10,0),
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0),
  hr_careerlevel_id              FOR COLUMN hr_crrlvl       DECIMAL(10,0),
  hr_jobeducation_id             FOR COLUMN hr_jbeduid     DECIMAL(10,0),
  hr_jobtype_id                  FOR COLUMN hr_jobtid       DECIMAL(10,0),
  responsibilities               FOR COLUMN respbits        VARCHAR(1000) DEFAULT NULL,
  primaryskills                  FOR COLUMN primskl         VARCHAR(1000) DEFAULT NULL,
  secondaryskills                FOR COLUMN sndryskl        VARCHAR(1000) DEFAULT NULL,
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validt                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  docaction                                                 CHAR(2) NOT NULL DEFAULT 'CO',
  docstatus                                                 VARCHAR(2) NOT NULL DEFAULT 'DR',
  processed                                                 CHAR(1) NOT NULL,
  isapproved                                                CHAR(1) NOT NULL,
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  value                                                     VARCHAR(50),
  openpositions                  FOR COLUMN opnpostn        DECIMAL(10,0),
  wfstate                                                   VARCHAR(50) DEFAULT 'Requested',
  ismanagerapproved              FOR COLUMN ismgrappr       CHAR(1) NOT NULL,
  ishrapproved                   FOR COLUMN isappvd         CHAR(1) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  hr_designation_id              FOR COLUMN hr_desid        DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  supervisor_id                  FOR COLUMN supid           DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  pubdat                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  hr_salaryrange_id              FOR COLUMN hr_slrngid     DECIMAL(10,0),
  documentno                                                VARCHAR(30),
  datedo                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_jobopening_key PRIMARY KEY (hr_jobopening_id),
  CONSTRAINT hr_jobopening_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_jobopening_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT hr_jobopening_ishrapproved_check CHECK (ishrapproved in ('Y','N')),
  CONSTRAINT hr_jobopening_ismanagerapproved_check CHECK (ismanagerapproved in ('Y','N')),
  CONSTRAINT hr_jobopening_processed_check CHECK (processed in ('Y','N'))
)
;

