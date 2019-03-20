-- Table: ad_wf_block

-- DROP TABLE ad_wf_block;

CREATE TABLE ad_wf_block FOR SYSTEM NAME adwfblk
(
  ad_wf_block_id                 FOR COLUMN ad_wfbid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_wf_block_pkey PRIMARY KEY (ad_wf_block_id),
  CONSTRAINT ad_wf_block_isactive_check CHECK (isactive in ('Y','N'))
)
;

