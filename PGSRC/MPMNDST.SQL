-- Table: m_promotiondistribution

-- DROP TABLE m_promotiondistribution;

CREATE TABLE m_promotiondistribution FOR SYSTEM NAME mpmndst
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  distributionsorting            FOR COLUMN dstbsort        CHAR(1),
  distributiontype               FOR COLUMN dstbtyp         CHAR(1) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_promotiondistribution_id     FOR COLUMN m_promdid       DECIMAL(10,0) NOT NULL,
  m_promotionline_id             FOR COLUMN m_promlid       DECIMAL(10,0) NOT NULL,
  m_promotion_id                 FOR COLUMN m_promid        DECIMAL(10,0) NOT NULL,
  operation                                                 VARCHAR(2) NOT NULL,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  qtyreward                                                 DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_promotiondistribution_pkey PRIMARY KEY (m_promotiondistribution_id),
  CONSTRAINT m_promotiondistribution_isactive_check CHECK (isactive in ('Y','N'))
)
;

