-- Table: ad_process_access

-- DROP TABLE ad_process_access;

CREATE TABLE ad_process_access FOR SYSTEM NAME adprcacc
(
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0) NOT NULL,
  ad_role_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  isreadwrite                    FOR COLUMN isrw            CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_process_access_pkey PRIMARY KEY (ad_process_id, ad_role_id),
  CONSTRAINT ad_process_access_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_process_access_isreadwrite_check CHECK (isreadwrite in ('Y','N'))
)
;

