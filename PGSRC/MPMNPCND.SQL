-- Table: m_promotionprecondition

-- DROP TABLE m_promotionprecondition;

CREATE TABLE m_promotionprecondition FOR SYSTEM NAME mpmnpcnd
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_bp_group_id                  FOR COLUMN c_bpgid         DECIMAL(10,0),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  enddate                                                   TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0),
  m_promotionprecondition_id     FOR COLUMN m_prompcid      DECIMAL(10,0) NOT NULL,
  m_promotion_id                 FOR COLUMN m_promid        DECIMAL(10,0) NOT NULL,
  m_warehouse_id                 FOR COLUMN m_wid           DECIMAL(10,0),
  promotioncode                  FOR COLUMN promcde         VARCHAR(30),
  promotioncounter               FOR COLUMN promcntr        DECIMAL(10,0) DEFAULT 0,
  promotionusagelimit            FOR COLUMN promulmt        DECIMAL(10,0) DEFAULT 0,
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  startdat                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_activity_id                  FOR COLUMN c_aid           DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_promotionprecondition_pkey PRIMARY KEY (m_promotionprecondition_id),
  CONSTRAINT m_promotionprecondition_isactive_check CHECK (isactive in ('Y','N'))
)
;

