-- Table: ad_wf_process

-- DROP TABLE ad_wf_process;

CREATE TABLE ad_wf_process FOR SYSTEM NAME adwfprc
(
  ad_wf_process_id               FOR COLUMN ad_wfpid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0) NOT NULL,
  ad_wf_responsible_id           FOR COLUMN ad_wfrid        DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  wfstate                                                   CHAR(2) NOT NULL,
  ad_message_id                  FOR COLUMN ad_mid          DECIMAL(10,0),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  textmsg                                                   VARCHAR(2000),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  priority                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_process_pkey PRIMARY KEY (ad_wf_process_id),
  CONSTRAINT ad_wf_process_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_wf_process_processed_check CHECK (processed in ('Y','N'))
)
;

