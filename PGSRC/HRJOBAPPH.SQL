-- Table: hr_jobapplicationhistory

-- DROP TABLE hr_jobapplicationhistory;

CREATE TABLE hr_jobapplicationhistory FOR SYSTEM NAME hrjobapph
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_jobapplicationhistory_id    FOR COLUMN hr_jobaphi     DECIMAL(10,0) NOT NULL,
  datetrx                                                   TIMESTAMP,
  status                                                    VARCHAR(50) DEFAULT NULL,
  hr_jobapplication_id           FOR COLUMN hr_jobapid      DECIMAL(10,0),
  remarks                                                   VARCHAR(255) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_jobapplicationhistory_key PRIMARY KEY (hr_jobapplicationhistory_id),
  CONSTRAINT hr_jobapplicationhistory_isactive_check CHECK (isactive in ('Y','N'))
)
;

