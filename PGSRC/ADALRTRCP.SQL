-- Table: ad_alertrecipient

-- DROP TABLE ad_alertrecipient;

CREATE TABLE ad_alertrecipient FOR SYSTEM NAME adalrtrcp
(
  ad_alertrecipient_id           FOR COLUMN ad_arpid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_alert_id                    FOR COLUMN ad_aid          DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  ad_role_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_alertrecipient_pkey PRIMARY KEY (ad_alertrecipient_id),
  CONSTRAINT ad_alertrecipient_isactive_check CHECK (isactive in ('Y','N'))
)
;

