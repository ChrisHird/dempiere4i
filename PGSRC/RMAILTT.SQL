-- Table: r_mailtext_trl

-- DROP TABLE r_mailtext_trl;

CREATE TABLE r_mailtext_trl FOR SYSTEM NAME rmailtt
(
  r_mailtext_id                  FOR COLUMN r_mtid          DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  name                                                      VARCHAR(60) NOT NULL,
  mailheader                                                VARCHAR(2000),
  mailtext                                                  VARCHAR(2000) NOT NULL,
  mailtext2                                                 VARCHAR(2000),
  mailtext3                                                 VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_mailtext_trl_pkey PRIMARY KEY (r_mailtext_id, ad_language),
  CONSTRAINT r_mailtext_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT r_mailtext_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

