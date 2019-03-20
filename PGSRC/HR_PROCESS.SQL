-- Table: hr_process

-- DROP TABLE hr_process;

CREATE TABLE hr_process
(
  hr_job_id                                                 DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  c_payselection_id              FOR COLUMN c_pselid        DECIMAL(10,0),
  hr_process_id                  FOR COLUMN hr_prcid        DECIMAL(10,0) NOT NULL DEFAULT -1,
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  name                                                      VARCHAR(60) NOT NULL,
  c_doctypetarget_id             FOR COLUMN c_dttid         DECIMAL(10,0) NOT NULL,
  columnsql                                                 VARCHAR(255),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  dateacc                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  docaction                                                 CHAR(2) NOT NULL DEFAULT 'CO',
  docstatus                                                 VARCHAR(2) NOT NULL DEFAULT 'DR',
  documentno                                                VARCHAR(90),
  hr_department_id               FOR COLUMN hr_deptid       DECIMAL(10,0),
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0) NOT NULL,
  hr_period_id                   FOR COLUMN hr_pdid         DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL,
  posted                                                    CHAR(1) NOT NULL DEFAULT 'N',
  processed                                                 CHAR(1) NOT NULL,
  processing                                                CHAR(1),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  reversal_id                    FOR COLUMN revid           DECIMAL(10,0),
  processedon                    FOR COLUMN prcon           DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_process_pkey PRIMARY KEY (hr_process_id),
  CONSTRAINT hr_process_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_process_processed_check CHECK (processed in ('Y','N'))
)
;

