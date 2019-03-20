-- Table: ad_browse

-- DROP TABLE ad_browse;

CREATE TABLE ad_browse
(
  ad_browse_id                   FOR COLUMN ad_bwsid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  entitytype                                                VARCHAR(40) NOT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  value                                                     VARCHAR(60) DEFAULT NULL,
  ad_view_id                                                DECIMAL(10,0) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000) DEFAULT NULL,
  processing                                                CHAR(1) DEFAULT NULL,
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0),
  isbetafunctionality            FOR COLUMN isbtafunc       CHAR(1) DEFAULT 'N',
  accesslevel                    FOR COLUMN acclvl          CHAR(1) NOT NULL DEFAULT '4',
  copyfrom                                                  CHAR(1),
  isdeleteable                   FOR COLUMN isdlta          CHAR(1) DEFAULT 'N',
  iscollapsiblebydefault         FOR COLUMN isclpedft       CHAR(1) DEFAULT 'N',
  isselectedbydefault            FOR COLUMN isselbydft      CHAR(1) DEFAULT 'N',
  isexecutedquerybydefault       FOR COLUMN isexqbdft       CHAR(1) DEFAULT 'N',
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  isshowtotal                    FOR COLUMN isstotal        CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  isupdateable                   FOR COLUMN isupdtbl        CHAR(1) DEFAULT 'N',
  CONSTRAINT ad_browse_key PRIMARY KEY (ad_browse_id),
  CONSTRAINT ad_browse_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_browse_isbetafunctionality_check CHECK (isbetafunctionality in ('Y','N')),
  CONSTRAINT ad_browse_iscollapsiblebydefault_check CHECK (iscollapsiblebydefault in ('Y','N')),
  CONSTRAINT ad_browse_isdeleteable_check CHECK (isdeleteable in ('Y','N')),
  CONSTRAINT ad_browse_isexecutedquerybydefault_check CHECK (isexecutedquerybydefault in ('Y','N')),
  CONSTRAINT ad_browse_isselectedbydefault_check CHECK (isselectedbydefault in ('Y','N')),
  CONSTRAINT ad_browse_isshowtotal_check CHECK (isshowtotal in ('Y','N')),
  CONSTRAINT ad_browse_isupdateable_check CHECK (isupdateable in ('Y','N'))
)
;

