-- Table: cm_chat

-- DROP TABLE cm_chat;

CREATE TABLE cm_chat
(
  cm_chat_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  confidentialtype               FOR COLUMN conftype        CHAR(1) NOT NULL,
  cm_chattype_id                 FOR COLUMN cm_ctid         DECIMAL(10,0),
  moderationtype                 FOR COLUMN modtype         CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_chat_pkey PRIMARY KEY (cm_chat_id),
  CONSTRAINT cm_chat_isactive_check CHECK (isactive in ('Y','N'))
)
;

