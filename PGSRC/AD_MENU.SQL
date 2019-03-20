-- Table: ad_menu

-- DROP TABLE ad_menu;

CREATE TABLE ad_menu
(
  ad_menu_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  name                                                      VARCHAR(60) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  issotrx                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  isreadonly                                                CHAR(1) NOT NULL DEFAULT 'N',
  action                                                    CHAR(1),
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  ad_task_id                                                DECIMAL(10,0),
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0),
  ad_form_id                                                DECIMAL(10,0),
  ad_workbench_id                FOR COLUMN ad_wid          DECIMAL(10,0),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  iscentrallymaintained          FOR COLUMN iscntmnt        CHAR(1) DEFAULT 'Y',
  ad_browse_id                   FOR COLUMN ad_bwsid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_menu_pkey PRIMARY KEY (ad_menu_id),
  CONSTRAINT ad_menu_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_menu_iscentrallymaintained_check CHECK (iscentrallymaintained in ('Y','N')),
  CONSTRAINT ad_menu_isreadonly_check CHECK (isreadonly in ('Y','N')),
  CONSTRAINT ad_menu_issotrx_check CHECK (issotrx in ('Y','N'))
)
;

