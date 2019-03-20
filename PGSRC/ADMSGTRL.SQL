-- Table: ad_message_trl

-- DROP TABLE ad_message_trl;

CREATE TABLE ad_message_trl FOR SYSTEM NAME admsgtrl
(
  ad_message_id                  FOR COLUMN ad_mid          DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  msgtext                                                   VARCHAR(2000) NOT NULL,
  msgtip                                                    VARCHAR(2000),
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_message_trl_pkey PRIMARY KEY (ad_message_id, ad_language),
  CONSTRAINT ad_message_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_message_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

