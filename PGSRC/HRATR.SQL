-- Table: hr_attribute

-- DROP TABLE hr_attribute;

CREATE TABLE hr_attribute FOR SYSTEM NAME hratr
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_rule_id                                                DECIMAL(10,0),
  amount                                                    DECFLOAT(16),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  columntype                                                CHAR(1),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  hr_attribute_acct              FOR COLUMN hr_atract       DECIMAL(10,0),
  hr_attribute_id                FOR COLUMN hr_atrid        DECIMAL(10,0) NOT NULL,
  hr_concept_id                  FOR COLUMN he_cptid        DECIMAL(10,0) NOT NULL,
  hr_department_id               FOR COLUMN hr_deptid       DECIMAL(10,0),
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  hr_job_id                                                 DECIMAL(10,0),
  hr_payroll_id                  FOR COLUMN hr_prid         DECIMAL(10,0),
  isactive                                                  CHAR(1) NOT NULL,
  isprinted                                                 CHAR(1),
  maxvalue                                                  DECIMAL(10,0),
  minvalue                                                  DECIMAL(10,0),
  qty                                                       DECFLOAT(16),
  servicedate                    FOR COLUMN srvdat          TIMESTAMP,
  textmsg                                                   VARCHAR(255),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  validfro                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validto                                                   TIMESTAMP,
  c_invoice_id                   FOR COLUMN c_iid           DECIMAL(10,0),
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  c_bp_relation_id               FOR COLUMN c_bprid         DECIMAL(10,0),
  referenceno                    FOR COLUMN refnum          VARCHAR(40) DEFAULT NULL,
  hr_contract_id                 FOR COLUMN hr_cntrid       DECIMAL(10,0),
  hr_shiftgroup_id               FOR COLUMN hr_shiftg       DECIMAL(10,0),
  hr_workgroup_id                FOR COLUMN hr_wgrpid       DECIMAL(10,0),
  hr_grade_id                    FOR COLUMN hr_gdid         DECIMAL(10,0),
  hr_degree_id                   FOR COLUMN hr_degid        DECIMAL(10,0),
  hr_race_id                                                DECIMAL(10,0),
  hr_careerlevel_id              FOR COLUMN hr_crrlvl       DECIMAL(10,0),
  hr_jobeducation_id             FOR COLUMN hr_jbeduid     DECIMAL(10,0),
  hr_employeetype_id             FOR COLUMN hr_emptid       DECIMAL(10,0),
  hr_jobtype_id                  FOR COLUMN hr_jobtid       DECIMAL(10,0),
  hr_skilltype_id                FOR COLUMN hr_skltyp       DECIMAL(10,0),
  ad_orgtrx_id                   FOR COLUMN ad_otid         DECIMAL(10,0),
  hr_designation_id              FOR COLUMN hr_desid        DECIMAL(10,0),
  hr_salaryrange_id              FOR COLUMN hr_slrngid     DECIMAL(10,0),
  hr_salarystructure_id          FOR COLUMN hr_slstrid     DECIMAL(10,0),
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0),
  c_project_id                   FOR COLUMN c_prjid         DECIMAL(10,0),
  employeestatus                 FOR COLUMN empsts          VARCHAR(2) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_attribute_pkey PRIMARY KEY (hr_attribute_id),
  CONSTRAINT hr_attribute_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_attribute_isprinted_check CHECK (isprinted in ('Y','N'))
)
;

