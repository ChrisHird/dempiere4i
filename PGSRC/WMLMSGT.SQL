-- Table: w_mailmsg_trl

-- DROP TABLE w_mailmsg_trl;

CREATE TABLE w_mailmsg_trl FOR SYSTEM NAME wmlmsgt
(
  w_mailmsg_id                   FOR COLUMN w_mmsgid        DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  subject                                                   VARCHAR(255) NOT NULL,
  message                                                   VARCHAR(2000) NOT NULL,
  message2                                                  VARCHAR(2000),
  message3                                                  VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_mailmsg_trl_pkey PRIMARY KEY (w_mailmsg_id, ad_language),
  CONSTRAINT w_mailmsg_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT w_mailmsg_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

