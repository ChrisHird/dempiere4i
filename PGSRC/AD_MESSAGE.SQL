-- Table: ad_message

-- DROP TABLE ad_message;

CREATE TABLE ad_message
(
  ad_message_id                  FOR COLUMN ad_mid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(255) NOT NULL,
  msgtext                                                   VARCHAR(2000) NOT NULL,
  msgtip                                                    VARCHAR(2000),
  msgtype                                                   CHAR(1) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_message_pkey PRIMARY KEY (ad_message_id),
  CONSTRAINT ad_message_isactive_check CHECK (isactive in ('Y','N'))
)
;

