-- Table: ad_archive

-- DROP TABLE ad_archive;

CREATE TABLE ad_archive
(
  ad_archive_id                  FOR COLUMN ad_arcid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  record_id                                                 DECIMAL(10,0),
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0),
  binarydata                                                BLOB,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  isreport                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_archive_pkey PRIMARY KEY (ad_archive_id),
  CONSTRAINT ad_archive_isactive_check CHECK (isactive in ('Y','N'))
)
;

