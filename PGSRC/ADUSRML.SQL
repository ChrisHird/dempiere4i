-- Table: ad_usermail

-- DROP TABLE ad_usermail;

CREATE TABLE ad_usermail FOR SYSTEM NAME adusrml
(
  ad_usermail_id                 FOR COLUMN ad_usrmid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  r_mailtext_id                  FOR COLUMN r_mtid          DECIMAL(10,0),
  w_mailmsg_id                   FOR COLUMN w_mmsgid        DECIMAL(10,0),
  messageid                                                 VARCHAR(120),
  deliveryconfirmation           FOR COLUMN dcfm            VARCHAR(120),
  isdelivered                    FOR COLUMN isdlvd          CHAR(1),
  subject                                                   VARCHAR(255),
  mailtext                                                  VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_usermail_pkey PRIMARY KEY (ad_usermail_id),
  CONSTRAINT ad_usermail_isactive_check CHECK (isactive in ('Y','N'))
)
;

