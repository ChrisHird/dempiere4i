-- Table: asp_process_para

-- DROP TABLE asp_process_para;

CREATE TABLE asp_process_para FOR SYSTEM NAME aspprcp
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_process_para_id             FOR COLUMN ad_ppid         DECIMAL(10,0) NOT NULL,
  asp_status                                                CHAR(1) NOT NULL DEFAULT 'U',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  asp_process_para_id            FOR COLUMN asp_prcpid      DECIMAL(10,0) NOT NULL,
  asp_process_id                 FOR COLUMN asp_prcid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT asp_process_para_pkey PRIMARY KEY (asp_process_para_id),
  CONSTRAINT asp_process_para_isactive_check CHECK (isactive in ('Y','N'))
)
;

