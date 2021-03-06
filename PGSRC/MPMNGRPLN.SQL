-- Table: m_promotiongroupline

-- DROP TABLE m_promotiongroupline;

CREATE TABLE m_promotiongroupline FOR SYSTEM NAME mpmngrpln
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  m_promotiongroupline_id        FOR COLUMN m_promglid      DECIMAL(10,0) NOT NULL,
  m_promotiongroup_id            FOR COLUMN m_promgid       DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_promotiongroupline_pkey PRIMARY KEY (m_promotiongroupline_id),
  CONSTRAINT m_promotiongroupline_isactive_check CHECK (isactive in ('Y','N'))
)
;

