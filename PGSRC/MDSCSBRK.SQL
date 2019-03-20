-- Table: m_discountschemabreak

-- DROP TABLE m_discountschemabreak;

CREATE TABLE m_discountschemabreak FOR SYSTEM NAME mdscsbrk
(
  m_discountschemabreak_id       FOR COLUMN m_dsbid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_discountschema_id            FOR COLUMN m_dsid          DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  breakvalue                                                DECFLOAT(16) NOT NULL,
  breakdiscount                  FOR COLUMN brkdsc          DECFLOAT(16) NOT NULL,
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  isbpartnerflatdiscount         FOR COLUMN isbpfdsc        CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_discountschemabreak_pkey PRIMARY KEY (m_discountschemabreak_id),
  CONSTRAINT m_discountschemabreak_isactive_check CHECK (isactive in ('Y','N'))
)
;

