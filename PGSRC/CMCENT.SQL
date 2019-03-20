-- Table: cm_chatentry

-- DROP TABLE cm_chatentry;

CREATE TABLE cm_chatentry FOR SYSTEM NAME cmcent
(
  cm_chatentry_id                FOR COLUMN cm_centid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  cm_chat_id                                                DECIMAL(10,0) NOT NULL,
  confidentialtype               FOR COLUMN conftype        CHAR(1) NOT NULL,
  characterdata                  FOR COLUMN chrdta          CLOB,
  cm_chatentryparent_id          FOR COLUMN cm_cepid        DECIMAL(10,0),
  cm_chatentrygrandparent_id     FOR COLUMN cm_cegpid       DECIMAL(10,0),
  chatentrytype                  FOR COLUMN chatetyp        CHAR(1) NOT NULL,
  moderatorstatus                FOR COLUMN modsts          CHAR(1),
  subject                                                   VARCHAR(255),
  ad_user_id                                                DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_chatentry_pkey PRIMARY KEY (cm_chatentry_id),
  CONSTRAINT cm_chatentry_isactive_check CHECK (isactive in ('Y','N'))
)
;

