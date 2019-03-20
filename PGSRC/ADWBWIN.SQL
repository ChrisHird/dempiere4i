-- Table: ad_workbenchwindow

-- DROP TABLE ad_workbenchwindow;

CREATE TABLE ad_workbenchwindow FOR SYSTEM NAME adwbwin
(
  ad_workbenchwindow_id          FOR COLUMN ad_wwid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_workbench_id                FOR COLUMN ad_wid          DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  isprimary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  ad_form_id                                                DECIMAL(10,0),
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0),
  ad_task_id                                                DECIMAL(10,0),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_workbenchwindow_pkey PRIMARY KEY (ad_workbenchwindow_id),
  CONSTRAINT ad_workbenchwindow_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_workbenchwindow_isprimary_check CHECK (isprimary in ('Y','N'))
)
;

