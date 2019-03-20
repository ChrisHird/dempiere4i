-- Table: ad_schedulerrecipient

-- DROP TABLE ad_schedulerrecipient;

CREATE TABLE ad_schedulerrecipient FOR SYSTEM NAME adschedr
(
  ad_schedulerrecipient_id       FOR COLUMN ad_srid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_scheduler_id                FOR COLUMN ad_scdid        DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  ad_role_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_schedulerrecipient_pkey PRIMARY KEY (ad_schedulerrecipient_id),
  CONSTRAINT ad_schedulerrecipient_isactive_check CHECK (isactive in ('Y','N'))
)
;

