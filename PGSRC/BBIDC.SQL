-- Table: b_bidcomment

-- DROP TABLE b_bidcomment;

CREATE TABLE b_bidcomment FOR SYSTEM NAME bbidc
(
  b_topic_id                                                DECIMAL(10,0) NOT NULL,
  b_bidcomment_id                FOR COLUMN b_bcid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  textmsg                                                   VARCHAR(2000) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT b_bidcomment_pkey PRIMARY KEY (b_topic_id, b_bidcomment_id),
  CONSTRAINT b_bidcomment_isactive_check CHECK (isactive in ('Y','N'))
)
;

