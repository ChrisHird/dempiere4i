-- Table: ad_scheduler

-- DROP TABLE ad_scheduler;

CREATE TABLE ad_scheduler FOR SYSTEM NAME adsched
(
  ad_scheduler_id                FOR COLUMN ad_scdid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0) NOT NULL,
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL,
  frequency                                                 DECIMAL(10,0) NOT NULL,
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  datenextrun                    FOR COLUMN datnxtr         TIMESTAMP,
  supervisor_id                  FOR COLUMN supid           DECIMAL(10,0) NOT NULL,
  keeplogdays                    FOR COLUMN kld             DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  weekday                                                   CHAR(1),
  scheduletype                   FOR COLUMN schedtyp        CHAR(1) NOT NULL DEFAULT 'F',
  monthday                                                  DECIMAL(10,0),
  isignoreprocessingtime         FOR COLUMN isignpt         CHAR(1) DEFAULT 'N',
  cronpattern                    FOR COLUMN cronptn         VARCHAR(255),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  record_id                                                 DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_scheduler_pkey PRIMARY KEY (ad_scheduler_id),
  CONSTRAINT ad_scheduler_isignoreprocessingtime_check CHECK (isignoreprocessingtime in ('Y','N'))
)
;

