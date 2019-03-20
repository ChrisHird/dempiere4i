-- Table: k_comment

-- DROP TABLE k_comment;

CREATE TABLE k_comment
(
  k_comment_id                   FOR COLUMN k_cmid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  k_entry_id                                                DECIMAL(10,0) NOT NULL,
  rating                                                    DECIMAL(10,0) NOT NULL,
  ispublic                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  ad_session_id                  FOR COLUMN ad_sid          DECIMAL(10,0),
  textmsg                                                   VARCHAR(2000) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_comment_pkey PRIMARY KEY (k_comment_id),
  CONSTRAINT k_comment_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT k_comment_ispublic_check CHECK (ispublic in ('Y','N'))
)
;

