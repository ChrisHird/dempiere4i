-- Table: ad_alert

-- DROP TABLE ad_alert;

CREATE TABLE ad_alert
(
  ad_alert_id                    FOR COLUMN ad_aid          DECIMAL(10,0) NOT NULL,
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
  alertsubject                   FOR COLUMN asub            VARCHAR(60) NOT NULL,
  alertmessage                   FOR COLUMN amsg            VARCHAR(2000) NOT NULL,
  enforceclientsecurity          FOR COLUMN enfcsec         CHAR(1) NOT NULL DEFAULT 'Y',
  enforcerolesecurity            FOR COLUMN enfrlsec        CHAR(1) NOT NULL DEFAULT 'Y',
  ad_alertprocessor_id           FOR COLUMN ad_apid         DECIMAL(10,0),
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_alert_pkey PRIMARY KEY (ad_alert_id),
  CONSTRAINT ad_alert_enforceclientsecurity_check CHECK (enforceclientsecurity in ('Y','N')),
  CONSTRAINT ad_alert_enforcerolesecurity_check CHECK (enforcerolesecurity in ('Y','N')),
  CONSTRAINT ad_alert_isactive_check CHECK (isactive in ('Y','N'))
)
;

