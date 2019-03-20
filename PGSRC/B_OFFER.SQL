-- Table: b_offer

-- DROP TABLE b_offer;

CREATE TABLE b_offer
(
  b_offer_id                                                DECIMAL(10,0) NOT NULL,
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
  b_sellerfunds_id               FOR COLUMN b_sfid          DECIMAL(10,0) NOT NULL,
  textmsg                                                   VARCHAR(2000),
  privatenote                    FOR COLUMN pvtnote         VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT b_offer_pkey PRIMARY KEY (b_offer_id),
  CONSTRAINT b_offer_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT b_offer_iswillingtocommit_check CHECK (iswillingtocommit in ('Y','N'))
)
;

