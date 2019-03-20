-- Table: ad_columnprocesspara

-- DROP TABLE ad_columnprocesspara;

CREATE TABLE ad_columnprocesspara FOR SYSTEM NAME adclmprcp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_columnprocesspara_id        FOR COLUMN ad_colppid      DECIMAL(10,0) NOT NULL,
  ad_columnprocess_id            FOR COLUMN ad_colpid       DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_process_para_id             FOR COLUMN ad_ppid         DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  defaultvalue                   FOR COLUMN dftval          VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_columnprocesspara_key PRIMARY KEY (ad_columnprocesspara_id),
  CONSTRAINT ad_columnprocesspara_isactive_check CHECK (isactive in ('Y','N'))
)
;

