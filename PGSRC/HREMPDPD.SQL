-- Table: hr_employeedependent

-- DROP TABLE hr_employeedependent;

CREATE TABLE hr_employeedependent FOR SYSTEM NAME hrempdpd
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_employeedependent_id        FOR COLUMN hr_empdid       DECIMAL(10,0) NOT NULL,
  hr_employee_id                 FOR COLUMN hr_empid        DECIMAL(10,0),
  name                                                      VARCHAR(60) NOT NULL,
  hr_relationship_id             FOR COLUMN hr_rlnid        DECIMAL(10,0) NOT NULL,
  birthda                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  age                                                       VARCHAR(25),
  iscollectcash                  FOR COLUMN iscolcsh        CHAR(1) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_bpartnerrelation_id          FOR COLUMN c_bprelid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  gender                                                    CHAR(1) DEFAULT NULL,
  hr_grade_id                    FOR COLUMN hr_gdid         DECIMAL(10,0),
  hr_degree_id                   FOR COLUMN hr_degid        DECIMAL(10,0),
  hr_race_id                                                DECIMAL(10,0),
  hr_careerlevel_id              FOR COLUMN hr_crrlvl       DECIMAL(10,0),
  isdepending                    FOR COLUMN isdepend        CHAR(1) DEFAULT NULL,
  isscholarship                  FOR COLUMN ischolp         CHAR(1) DEFAULT 'N',
  isactivestudent                FOR COLUMN isactstdt       CHAR(1) DEFAULT 'N',
  CONSTRAINT hr_employeedependent_key PRIMARY KEY (hr_employeedependent_id),
  CONSTRAINT hr_employeedependent_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT hr_employeedependent_isactivestudent_check CHECK (isactivestudent in ('Y','N')),
  CONSTRAINT hr_employeedependent_iscollectcash_check CHECK (iscollectcash in ('Y','N')),
  CONSTRAINT hr_employeedependent_isdepending_check CHECK (isdepending in ('Y','N')),
  CONSTRAINT hr_employeedependent_isscholarship_check CHECK (isscholarship in ('Y','N'))
)
;

