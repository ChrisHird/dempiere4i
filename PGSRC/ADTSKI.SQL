-- Table: ad_taskinstance

-- DROP TABLE ad_taskinstance;

CREATE TABLE ad_taskinstance FOR SYSTEM NAME adtski
(
  ad_taskinstance_id             FOR COLUMN ad_tiid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  ad_task_id                                                DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_taskinstance_pkey PRIMARY KEY (ad_taskinstance_id),
  CONSTRAINT ad_taskinstance_isactive_check CHECK (isactive in ('Y','N'))
)
;

