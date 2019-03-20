-- Table: w_mailmsg

-- DROP TABLE w_mailmsg;

CREATE TABLE w_mailmsg
(
  w_mailmsg_id                   FOR COLUMN w_mmsgid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  w_store_id                                                DECIMAL(10,0) NOT NULL,
  mailmsgtype                    FOR COLUMN mmsgtyp         CHAR(2) NOT NULL,
  subject                                                   VARCHAR(255) NOT NULL,
  message                                                   VARCHAR(2000) NOT NULL,
  message2                                                  VARCHAR(2000),
  message3                                                  VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_mailmsg_pkey PRIMARY KEY (w_mailmsg_id),
  CONSTRAINT w_mailmsg_isactive_check CHECK (isactive in ('Y','N'))
)
;

