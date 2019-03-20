-- Table: ad_wf_activity

-- DROP TABLE ad_wf_activity;

CREATE TABLE ad_wf_activity FOR SYSTEM NAME adwfact
(
  ad_wf_activity_id              FOR COLUMN ad_wfaid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_wf_process_id               FOR COLUMN ad_wfpid        DECIMAL(10,0) NOT NULL,
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0) NOT NULL,
  ad_wf_responsible_id           FOR COLUMN ad_wfrid        DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  wfstate                                                   CHAR(2) NOT NULL,
  ad_message_id                  FOR COLUMN ad_mid          DECIMAL(10,0),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  textmsg                                                   VARCHAR(2000),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  priority                                                  DECIMAL(10,0),
  endwaittime                    FOR COLUMN ewtim           TIMESTAMP,
  datelastalert                  FOR COLUMN datlalrt        TIMESTAMP,
  dynprioritystart               FOR COLUMN dynptystr       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_activity_pkey PRIMARY KEY (ad_wf_activity_id),
  CONSTRAINT ad_wf_activity_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_wf_activity_processed_check CHECK (processed in ('Y','N'))
)
;

