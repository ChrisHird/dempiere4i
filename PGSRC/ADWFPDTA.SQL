-- Table: ad_wf_processdata

-- DROP TABLE ad_wf_processdata;

CREATE TABLE ad_wf_processdata FOR SYSTEM NAME adwfpdta
(
  ad_wf_processdata_id           FOR COLUMN ad_wfpdid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_wf_process_id               FOR COLUMN ad_wfpid        DECIMAL(10,0) NOT NULL,
  attributename                  FOR COLUMN attrnam         VARCHAR(60) NOT NULL,
  attributevalue                 FOR COLUMN attrval         VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_processdata_pkey PRIMARY KEY (ad_wf_processdata_id),
  CONSTRAINT ad_wf_processdata_isactive_check CHECK (isactive in ('Y','N'))
)
;

