-- Table: b_bid

-- DROP TABLE b_bid;

CREATE TABLE b_bid
(
  b_bid_id                                                  DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  b_topic_id                                                DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  iswillingtocommit              FOR COLUMN iswilcmt        CHAR(1) NOT NULL DEFAULT 'Y',
  b_buyerfunds_id                FOR COLUMN b_bfid          DECIMAL(10,0) NOT NULL,
  textmsg                                                   VARCHAR(2000),
  privatenote                    FOR COLUMN pvtnote         VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT b_bid_pkey PRIMARY KEY (b_bid_id),
  CONSTRAINT b_bid_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT b_bid_iswillingtocommit_check CHECK (iswillingtocommit in ('Y','N'))
)
;

