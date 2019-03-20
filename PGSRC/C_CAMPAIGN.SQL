-- Table: c_campaign

-- DROP TABLE c_campaign;

CREATE TABLE c_campaign
(
  c_campaign_id                  FOR COLUMN c_camid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_channel_id                   FOR COLUMN c_chid          DECIMAL(10,0),
  startdate                                                 TIMESTAMP,
  enddate                                                   TIMESTAMP,
  costs                                                     DECFLOAT(16) NOT NULL DEFAULT 0,
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_campaign_pkey PRIMARY KEY (c_campaign_id),
  CONSTRAINT c_campaign_isactive_check CHECK (isactive in ('Y','N'))
)
;

