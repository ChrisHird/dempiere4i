-- Table: m_promotionreward

-- DROP TABLE m_promotionreward;

CREATE TABLE m_promotionreward FOR SYSTEM NAME mpmnrwd
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  amount                                                    DECFLOAT(16),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  distributionsorting            FOR COLUMN dstbsort        CHAR(1),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  isforalldistribution           FOR COLUMN isfalldst       CHAR(1) NOT NULL DEFAULT 'N',
  issamedistribution             FOR COLUMN issamedst       CHAR(1) DEFAULT 'Y',
  m_promotiondistribution_id     FOR COLUMN m_promdid       DECIMAL(10,0),
  m_promotionreward_id           FOR COLUMN m_prrwdid       DECIMAL(10,0) NOT NULL,
  m_promotion_id                 FOR COLUMN m_promid        DECIMAL(10,0) NOT NULL,
  m_targetdistribution_id        FOR COLUMN m_tgtdstid      DECIMAL(10,0),
  qty                                                       DECFLOAT(16),
  rewardtype                                                CHAR(1) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_promotionreward_pkey PRIMARY KEY (m_promotionreward_id),
  CONSTRAINT m_promotionreward_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_promotionreward_isforalldistribution_check CHECK (isforalldistribution in ('Y','N')),
  CONSTRAINT m_promotionreward_issamedistribution_check CHECK (issamedistribution in ('Y','N'))
)
;

