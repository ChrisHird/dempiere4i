-- Table: ad_note

-- DROP TABLE ad_note;

CREATE TABLE ad_note
(
  ad_note_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  ad_message_id                  FOR COLUMN ad_mid          DECIMAL(10,0) NOT NULL,
  reference                                                 VARCHAR(60),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  record_id                                                 DECIMAL(10,0),
  processed                                                 CHAR(1) DEFAULT 'N',
  processing                                                CHAR(1),
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_wf_activity_id              FOR COLUMN ad_wfaid        DECIMAL(10,0),
  textmsg                                                   VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_note_pkey PRIMARY KEY (ad_note_id),
  CONSTRAINT ad_note_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_note_processed_check CHECK (processed in ('Y','N'))
)
;

