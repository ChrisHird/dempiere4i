-- Table: pa_achievement

-- DROP TABLE pa_achievement;

CREATE TABLE pa_achievement FOR SYSTEM NAME paach
(
  pa_achievement_id              FOR COLUMN pa_aid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  note                                                      VARCHAR(2000),
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  pa_measure_id                  FOR COLUMN pa_mid          DECIMAL(10,0) NOT NULL,
  manualactual                   FOR COLUMN mact            DECFLOAT(16) NOT NULL DEFAULT 0,
  isachieved                                                CHAR(1) NOT NULL,
  datedoc                                                   TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_achievement_pkey PRIMARY KEY (pa_achievement_id),
  CONSTRAINT pa_achievement_isachieved_check CHECK (isachieved in ('Y','N')),
  CONSTRAINT pa_achievement_isactive_check CHECK (isactive in ('Y','N'))
)
;

