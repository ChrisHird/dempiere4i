-- Table: c_rfq_topic

-- DROP TABLE c_rfq_topic;

CREATE TABLE c_rfq_topic FOR SYSTEM NAME crfqt
(
  c_rfq_topic_id                 FOR COLUMN c_rqtid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isselfservice                  FOR COLUMN isslfsrv        CHAR(1) NOT NULL DEFAULT 'N',
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_rfq_topic_pkey PRIMARY KEY (c_rfq_topic_id),
  CONSTRAINT c_rfq_topic_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_rfq_topic_isselfservice_check CHECK (isselfservice in ('Y','N'))
)
;

