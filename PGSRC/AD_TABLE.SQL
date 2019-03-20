-- Table: ad_table

-- DROP TABLE ad_table;

CREATE TABLE ad_table
(
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  tablename                                                 VARCHAR(40) NOT NULL,
  isview                                                    CHAR(1) NOT NULL DEFAULT 'N',
  accesslevel                    FOR COLUMN acclvl          CHAR(1) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  ad_val_rule_id                 FOR COLUMN ad_vrid         DECIMAL(10,0),
  loadseq                                                   DECIMAL(10,0),
  issecurityenabled              FOR COLUMN issecenld       CHAR(1) NOT NULL DEFAULT 'N',
  isdeleteable                   FOR COLUMN isdlta          CHAR(1) NOT NULL DEFAULT 'Y',
  ishighvolume                   FOR COLUMN ishighvol       CHAR(1) NOT NULL DEFAULT 'N',
  importtable                    FOR COLUMN imptbl          CHAR(1),
  ischangelog                    FOR COLUMN ischglog        CHAR(1) NOT NULL DEFAULT 'N',
  replicationtype                FOR COLUMN reptyp          CHAR(1) NOT NULL DEFAULT 'L',
  po_window_id                   FOR COLUMN po_wid          DECIMAL(10,0),
  copycolumnsfromtable           FOR COLUMN cpycolft        VARCHAR(1),
  iscentrallymaintained          FOR COLUMN iscntmnt        CHAR(1) DEFAULT 'Y',
  actriggerlength                FOR COLUMN atriglen        DECIMAL(10,0) DEFAULT 0,
  isignoremigration              FOR COLUMN isignmgn        CHAR(1) DEFAULT 'N',
  isdocument                                                CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  ad_contextinfo_id              FOR COLUMN ad_ctxid        DECIMAL(10,0),
  CONSTRAINT ad_table_pkey PRIMARY KEY (ad_table_id),
  CONSTRAINT ad_table_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_table_iscentrallymaintained_check CHECK (iscentrallymaintained in ('Y','N')),
  CONSTRAINT ad_table_isdeleteable_check CHECK (isdeleteable in ('Y','N')),
  CONSTRAINT ad_table_isdocument_check CHECK (isdocument in ('Y','N')),
  CONSTRAINT ad_table_ishighvolume_check CHECK (ishighvolume in ('Y','N')),
  CONSTRAINT ad_table_isignoremigration_check CHECK (isignoremigration in ('Y','N')),
  CONSTRAINT ad_table_issecurityenabled_check CHECK (issecurityenabled in ('Y','N')),
  CONSTRAINT ad_table_isview_check CHECK (isview in ('Y','N'))
)
;

