-- Table: asp_process

-- DROP TABLE asp_process;

CREATE TABLE asp_process FOR SYSTEM NAME aspprc
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0) NOT NULL,
  asp_level_id                   FOR COLUMN asp_lvlid       DECIMAL(10,0) NOT NULL,
  asp_status                                                CHAR(1) NOT NULL DEFAULT 'U',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  asp_process_id                 FOR COLUMN asp_prcid       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT asp_process_pkey PRIMARY KEY (asp_process_id),
  CONSTRAINT asp_process_isactive_check CHECK (isactive in ('Y','N'))
)
;

