-- Table: asp_workflow

-- DROP TABLE asp_workflow;

CREATE TABLE asp_workflow FOR SYSTEM NAME aspwf
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0) NOT NULL,
  asp_level_id                   FOR COLUMN asp_lvlid       DECIMAL(10,0) NOT NULL,
  asp_status                                                CHAR(1) NOT NULL DEFAULT 'U',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  asp_workflow_id                FOR COLUMN asp_wfid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT asp_workflow_pkey PRIMARY KEY (asp_workflow_id),
  CONSTRAINT asp_workflow_isactive_check CHECK (isactive in ('Y','N'))
)
;

