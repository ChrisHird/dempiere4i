-- Table: c_rfq_topicsubscriberonly

-- DROP TABLE c_rfq_topicsubscriberonly;

CREATE TABLE c_rfq_topicsubscriberonly FOR SYSTEM NAME crfqtso
(
  c_rfq_topicsubscriberonly_id   FOR COLUMN c_rqtsoid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_rfq_topicsubscriber_id       FOR COLUMN c_rqtsid        DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  m_product_category_id          FOR COLUMN m_pcid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_rfq_topicsubscriberonly_pkey PRIMARY KEY (c_rfq_topicsubscriberonly_id),
  CONSTRAINT c_rfq_topicsubscriberonly_isactive_check CHECK (isactive in ('Y','N'))
)
;

