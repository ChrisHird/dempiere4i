-- Table: hr_salarystructureline

-- DROP TABLE hr_salarystructureline;

CREATE TABLE hr_salarystructureline FOR SYSTEM NAME hrsalstrln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_salarystructureline_id      FOR COLUMN hr_slstlid    DECIMAL(10,0) NOT NULL,
  hr_concept_id                  FOR COLUMN he_cptid        DECIMAL(10,0) NOT NULL,
  percentage                                                DECFLOAT(16) NOT NULL,
  amount                                                    DECFLOAT(16) NOT NULL,
  seqno                                                     DECIMAL(10,0),
  hr_salarystructure_id          FOR COLUMN hr_slstrid     DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_salarystructureline_key PRIMARY KEY (hr_salarystructureline_id),
  CONSTRAINT hr_salarystructureline_isactive_check CHECK (isactive in ('Y','N'))
)
;

