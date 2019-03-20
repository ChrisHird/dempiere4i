-- Table: asp_clientexception

-- DROP TABLE asp_clientexception;

CREATE TABLE asp_clientexception FOR SYSTEM NAME aspclte
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_field_id                    FOR COLUMN ad_fid          DECIMAL(10,0),
  ad_form_id                                                DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0) NOT NULL DEFAULT 0,
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0),
  ad_process_para_id             FOR COLUMN ad_ppid         DECIMAL(10,0),
  ad_tab_id                                                 DECIMAL(10,0),
  ad_task_id                                                DECIMAL(10,0),
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0),
  ad_window_id                   FOR COLUMN ad_winid        DECIMAL(10,0),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  asp_clientexception_id         FOR COLUMN asp_cxid        DECIMAL(10,0) NOT NULL,
  asp_status                                                CHAR(1) NOT NULL DEFAULT 'U',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_browse_id                   FOR COLUMN ad_bwsid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT asp_clientexception_pkey PRIMARY KEY (asp_clientexception_id),
  CONSTRAINT asp_clientexception_isactive_check CHECK (isactive in ('Y','N'))
)
;

