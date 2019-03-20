-- Table: cm_chattype

-- DROP TABLE cm_chattype;

CREATE TABLE cm_chattype FOR SYSTEM NAME cmctyp
(
  cm_chattype_id                 FOR COLUMN cm_ctid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  moderationtype                 FOR COLUMN modtype         CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_chattype_pkey PRIMARY KEY (cm_chattype_id),
  CONSTRAINT cm_chattype_isactive_check CHECK (isactive in ('Y','N'))
)
;

