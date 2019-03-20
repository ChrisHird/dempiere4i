-- Table: ad_task

-- DROP TABLE ad_task;

CREATE TABLE ad_task
(
  ad_task_id                                                DECIMAL(10,0) NOT NULL,
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
  accesslevel                    FOR COLUMN acclvl          CHAR(1) NOT NULL,
  os_command                                                VARCHAR(2000) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  isserverprocess                FOR COLUMN issrvprc        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_task_pkey PRIMARY KEY (ad_task_id),
  CONSTRAINT ad_task_isactive_check CHECK (isactive in ('Y','N'))
)
;

