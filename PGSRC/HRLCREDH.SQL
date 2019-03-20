-- Table: hr_leavecredithistory

-- DROP TABLE hr_leavecredithistory;

CREATE TABLE hr_leavecredithistory FOR SYSTEM NAME hrlcredh
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_leavecredithistory_id       FOR COLUMN hr_lcrhtid     DECIMAL(10,0) NOT NULL,
  noofleavescredited             FOR COLUMN nolvscr         DECFLOAT(16) NOT NULL,
  hr_leavereason_id              FOR COLUMN hr_lrsnid       DECIMAL(10,0),
  hr_leavetype_id                FOR COLUMN hr_ltid         DECIMAL(10,0) NOT NULL,
  c_year_id                                                 DECIMAL(10,0) NOT NULL,
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  hr_leaveassign_id              FOR COLUMN hr_lasgnid      DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_leavecredithistory_key PRIMARY KEY (hr_leavecredithistory_id),
  CONSTRAINT hr_leavecredithistory_isactive_check CHECK (isactive in ('Y','N'))
)
;

