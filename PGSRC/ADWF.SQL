-- Table: ad_workflow

-- DROP TABLE ad_workflow;

CREATE TABLE ad_workflow FOR SYSTEM NAME adwf
(
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  accesslevel                    FOR COLUMN acclvl          CHAR(1) NOT NULL,
  ad_wf_node_id                  FOR COLUMN ad_wfnid        DECIMAL(10,0),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  durationunit                   FOR COLUMN durunit         CHAR(1),
  author                                                    VARCHAR(20) NOT NULL DEFAULT 'ComPiere',
  version                                                   DECIMAL(10,0) NOT NULL DEFAULT 0,
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  priority                                                  DECIMAL(10,0),
  "limit"                                                   DECIMAL(10,0),
  duration                                                  DECIMAL(10,0) NOT NULL DEFAULT 0,
  cost                                                      DECFLOAT(16) NOT NULL,
  workingtime                    FOR COLUMN wrktim          DECIMAL(10,0) NOT NULL DEFAULT 0,
  waitingtime                    FOR COLUMN wattim          DECIMAL(10,0) NOT NULL DEFAULT 0,
  ad_wf_responsible_id           FOR COLUMN ad_wfrid        DECIMAL(10,0),
  publishstatus                  FOR COLUMN pubsts          CHAR(1) NOT NULL,
  ad_workflowprocessor_id        FOR COLUMN ad_wpid         DECIMAL(10,0),
  value                                                     VARCHAR(40) NOT NULL,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  validateworkflow               FOR COLUMN valwf           CHAR(1),
  workflowtype                   FOR COLUMN wftyp           CHAR(1) NOT NULL DEFAULT 'G',
  docvaluelogic                  FOR COLUMN docvallgc       VARCHAR(2000),
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'N',
  s_resource_id                  FOR COLUMN s_rid           DECIMAL(10,0),
  setuptime                                                 DECIMAL(10,0),
  movingtime                                                DECIMAL(10,0),
  processtype                    FOR COLUMN prctype         CHAR(2),
  documentno                                                VARCHAR(30),
  qtybatchsize                   FOR COLUMN qtybs           DECFLOAT(16) DEFAULT 1,
  queuingtime                    FOR COLUMN queuetim        DECIMAL(10,0),
  isbetafunctionality            FOR COLUMN isbtafunc       CHAR(1) NOT NULL DEFAULT 'N',
  yield                                                     DECIMAL(10,0) DEFAULT 100,
  unitscycles                    FOR COLUMN untcyc          DECFLOAT(16),
  overlapunits                   FOR COLUMN olapunits       DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_workflow_pkey PRIMARY KEY (ad_workflow_id),
  CONSTRAINT ad_workflow_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_workflow_isbetafunctionality_check CHECK (isbetafunctionality in ('Y','N'))
)
;

