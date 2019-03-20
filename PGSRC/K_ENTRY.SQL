-- Table: k_entry

-- DROP TABLE k_entry;

CREATE TABLE k_entry
(
  k_entry_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  k_topic_id                                                DECIMAL(10,0) NOT NULL,
  rating                                                    DECIMAL(10,0) NOT NULL,
  ispublic                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  keywords                                                  VARCHAR(255),
  k_source_id                    FOR COLUMN k_sid           DECIMAL(10,0),
  descriptionurl                 FOR COLUMN descurl         VARCHAR(120),
  validto                                                   TIMESTAMP,
  ad_session_id                  FOR COLUMN ad_sid          DECIMAL(10,0),
  textmsg                                                   VARCHAR(2000) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_entry_pkey PRIMARY KEY (k_entry_id),
  CONSTRAINT k_entry_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT k_entry_ispublic_check CHECK (ispublic in ('Y','N'))
)
;

