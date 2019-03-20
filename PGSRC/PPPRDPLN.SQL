-- Table: pp_product_planning

-- DROP TABLE pp_product_planning;

CREATE TABLE pp_product_planning FOR SYSTEM NAME ppprdpln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL DEFAULT 0,
  ad_workflow_id                 FOR COLUMN ad_wfid         DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  deliverytime_promised          FOR COLUMN dlytp           DECFLOAT(16),
  isactive                                                  CHAR(1) NOT NULL,
  iscreateplan                   FOR COLUMN iscrtpln        CHAR(1) NOT NULL DEFAULT 'Y',
  isissue                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  ismps                                                     CHAR(1),
  isphantom                                                 CHAR(1) NOT NULL,
  isrequiredmrp                  FOR COLUMN isreqmrp        CHAR(1) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  order_max                                                 DECFLOAT(16),
  order_min                                                 DECFLOAT(16),
  order_pack                                                DECFLOAT(16),
  order_period                   FOR COLUMN orderpd         DECFLOAT(16),
  order_policy                   FOR COLUMN orderply        VARCHAR(3),
  order_qty                                                 DECFLOAT(16),
  pp_product_bom_id              FOR COLUMN pp_pbomid       DECIMAL(10,0),
  pp_product_planning_id         FOR COLUMN pp_pplnid       DECIMAL(10,0) NOT NULL,
  planner_id                                                DECIMAL(10,0),
  s_resource_id                  FOR COLUMN s_rid           DECIMAL(10,0),
  timefence                                                 DECFLOAT(16),
  transfertime                   FOR COLUMN trnstim         DECFLOAT(16),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  workingtime                    FOR COLUMN wrktim          DECFLOAT(16),
  yield                                                     DECIMAL(10,0) DEFAULT 100,
  dd_networkdistribution_id      FOR COLUMN dd_ndid         DECIMAL(10,0),
  safetystock                    FOR COLUMN safstk          DECFLOAT(16),
  isrequireddrp                  FOR COLUMN isreqdrp        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_product_planning_pkey PRIMARY KEY (pp_product_planning_id),
  CONSTRAINT pp_product_planning_unique UNIQUE (ad_client_id, ad_org_id, s_resource_id, m_warehouse_id, m_product_id),
  CONSTRAINT pp_product_planning_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_product_planning_iscreateplan_check CHECK (iscreateplan in ('Y','N')),
  CONSTRAINT pp_product_planning_isissue_check CHECK (isissue in ('Y','N')),
  CONSTRAINT pp_product_planning_ismps_check CHECK (ismps in ('Y','N')),
  CONSTRAINT pp_product_planning_isphantom_check CHECK (isphantom in ('Y','N')),
  CONSTRAINT pp_product_planning_isrequireddrp_check CHECK (isrequireddrp in ('Y','N')),
  CONSTRAINT pp_product_planning_isrequiredmrp_check CHECK (isrequiredmrp in ('Y','N'))
)
;

