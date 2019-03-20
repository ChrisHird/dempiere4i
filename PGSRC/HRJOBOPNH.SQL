-- Table: hr_jobopeninghistory

-- DROP TABLE hr_jobopeninghistory;

CREATE TABLE hr_jobopeninghistory FOR SYSTEM NAME hrjobopnh
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hr_jobopeninghistory_id        FOR COLUMN hr_jbophid     DECIMAL(10,0) NOT NULL,
  hr_jobopening_id               FOR COLUMN hr_jobopid      DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  status                                                    VARCHAR(50) DEFAULT NULL,
  datetrx                                                   TIMESTAMP,
  remarks                                                   VARCHAR(50) DEFAULT NULL,
  currentstatus                  FOR COLUMN curstatus       VARCHAR(50) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT hr_jobopeninghistory_key PRIMARY KEY (hr_jobopeninghistory_id),
  CONSTRAINT hr_jobopeninghistory_isactive_check CHECK (isactive in ('Y','N'))
)
;

