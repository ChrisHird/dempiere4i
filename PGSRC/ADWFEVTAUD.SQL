-- Table: ad_wf_eventaudit

-- DROP TABLE ad_wf_eventaudit;

CREATE TABLE ad_wf_eventaudit FOR SYSTEM NAME adwfevtaud
(
  ad_wf_eventaudit_id            FOR COLUMN ad_wfeaid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  eventtype                                                 CHAR(2) NOT NULL,
  wfstate                                                   CHAR(2) NOT NULL,
  ad_wf_process_id               FOR COLUMN ad_wfpid        DECIMAL(10,0) NOT NULL,
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  record_id                                                 DECIMAL(10,0) NOT NULL,
  ad_wf_responsible_id           FOR COLUMN ad_wfrid        DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  elapsedtimems                  FOR COLUMN eltms           DECFLOAT(16) NOT NULL,
  attributename                  FOR COLUMN attrnam         VARCHAR(60),
  oldvalue                                                  VARCHAR(2000),
  newvalue                                                  VARCHAR(2000),
  description                    FOR COLUMN desc            VARCHAR(255),
  textmsg                                                   VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_eventaudit_pkey PRIMARY KEY (ad_wf_eventaudit_id),
  CONSTRAINT ad_wf_eventaudit_isactive_check CHECK (isactive in ('Y','N'))
)
;

