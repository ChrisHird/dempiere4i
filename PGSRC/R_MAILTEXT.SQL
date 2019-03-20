-- Table: r_mailtext

-- DROP TABLE r_mailtext;

CREATE TABLE r_mailtext
(
  r_mailtext_id                  FOR COLUMN r_mtid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  ishtml                                                    CHAR(1) NOT NULL DEFAULT 'N',
  mailheader                                                VARCHAR(2000),
  mailtext                                                  VARCHAR(2000) NOT NULL,
  mailtext2                                                 VARCHAR(2000),
  mailtext3                                                 VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_mailtext_pkey PRIMARY KEY (r_mailtext_id),
  CONSTRAINT r_mailtext_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT r_mailtext_ishtml_check CHECK (ishtml in ('Y','N'))
)
;

