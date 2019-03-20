-- Table: b_topic

-- DROP TABLE b_topic;

CREATE TABLE b_topic
(
  b_topic_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  textmsg                                                   VARCHAR(2000),
  topicstatus                    FOR COLUMN tpcsts          CHAR(2) NOT NULL,
  topicaction                    FOR COLUMN tpcact          CHAR(2) NOT NULL,
  ispublished                    FOR COLUMN ispubl          CHAR(1) NOT NULL DEFAULT 'Y',
  textdetails                    FOR COLUMN txtdets         CLOB,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  b_topictype_id                 FOR COLUMN b_ttid          DECIMAL(10,0) NOT NULL,
  b_topiccategory_id             FOR COLUMN b_tcid          DECIMAL(10,0) NOT NULL,
  decisiondate                   FOR COLUMN desdat           TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT b_topic_pkey PRIMARY KEY (b_topic_id),
  CONSTRAINT b_topic_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT b_topic_ispublished_check CHECK (ispublished in ('Y','N')),
  CONSTRAINT b_topic_processed_check CHECK (processed in ('Y','N'))
)
;

