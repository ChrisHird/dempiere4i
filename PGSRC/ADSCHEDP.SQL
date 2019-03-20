-- Table: ad_scheduler_para

-- DROP TABLE ad_scheduler_para;

CREATE TABLE ad_scheduler_para FOR SYSTEM NAME adschedp
(
  ad_scheduler_id                FOR COLUMN ad_scdid        DECIMAL(10,0) NOT NULL,
  ad_process_para_id             FOR COLUMN ad_ppid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  parameterdefault               FOR COLUMN parmdft         VARCHAR(255),
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_scheduler_para_pkey PRIMARY KEY (ad_scheduler_id, ad_process_para_id)
)
  ;
