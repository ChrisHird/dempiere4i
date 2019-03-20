-- Table: b_buyerfunds

-- DROP TABLE b_buyerfunds;

CREATE TABLE b_buyerfunds FOR SYSTEM NAME bbuyerf
(
  b_buyerfunds_id                FOR COLUMN b_bfid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  c_order_id                                                DECIMAL(10,0),
  c_payment_id                   FOR COLUMN c_payid         DECIMAL(10,0),
  committedamt                   FOR COLUMN cmtamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  noncommittedamt                FOR COLUMN ncmtamt         DECFLOAT(16) NOT NULL DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT b_buyerfunds_pkey PRIMARY KEY (b_buyerfunds_id),
  CONSTRAINT b_buyerfunds_isactive_check CHECK (isactive in ('Y','N'))
)
;

