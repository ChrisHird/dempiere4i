-- Table: ad_changelog

-- DROP TABLE ad_changelog;

CREATE TABLE ad_changelog FOR SYSTEM NAME adchgl
(
  ad_changelog_id                FOR COLUMN ad_cgid         DECIMAL(10,0) NOT NULL,
  ad_session_id                  FOR COLUMN ad_sid          DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  oldvalue                                                  VARCHAR(2000),
  newvalue                                                  VARCHAR(2000),
  undo                                                      CHAR(1),
  redo                                                      CHAR(1),
  iscustomization                FOR COLUMN iscustom        CHAR(1) NOT NULL DEFAULT 'N',
  trxname                                                   VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  eventchangelog                 FOR COLUMN evtchglog       CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_changelog_pkey PRIMARY KEY (ad_changelog_id, ad_session_id, ad_table_id, ad_column_id),
  CONSTRAINT ad_changelog_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_changelog_iscustomization_check CHECK (iscustomization in ('Y','N'))
)
;

