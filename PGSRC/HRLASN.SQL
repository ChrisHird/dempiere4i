-- Table: hr_leaveassign

-- DROP TABLE hr_leaveassign;

CREATE TABLE hr_leaveassign FOR SYSTEM NAME hrlasn
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_leaveassign_id              FOR COLUMN hr_lasgnid      DECIMAL(10,0) NOT NULL,
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  noofleavesallocated            FOR COLUMN nolvsalc        DECFLOAT(16) NOT NULL,
  totalleaves                    FOR COLUMN totlvs          DECFLOAT(16) NOT NULL,
  usedleaves                                                DECFLOAT(16),
  hr_leavetype_id                FOR COLUMN hr_ltid         DECIMAL(10,0) NOT NULL,
  balance                                                   DECFLOAT(16),
  c_year_id                                                 DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(2),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_leaveassign_key PRIMARY KEY (hr_leaveassign_id),
  CONSTRAINT hr_leaveassign_isactive_check CHECK (isactive in ('Y','N'))
)
;

