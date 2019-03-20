-- Table: c_rfq_topicsubscriber

-- DROP TABLE c_rfq_topicsubscriber;

CREATE TABLE c_rfq_topicsubscriber FOR SYSTEM NAME crfqts
(
  c_rfq_topicsubscriber_id       FOR COLUMN c_rqtsid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_rfq_topic_id                 FOR COLUMN c_rqtid         DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bpartner_location_id         FOR COLUMN c_bplid         DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0),
  subscribedate                  FOR COLUMN subdat          TIMESTAMP,
  optoutdate                                                TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_rfq_topicsubscriber_pkey PRIMARY KEY (c_rfq_topicsubscriber_id),
  CONSTRAINT c_rfq_topicsubscriber_isactive_check CHECK (isactive in ('Y','N'))
)
;

