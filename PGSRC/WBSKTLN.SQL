-- Table: w_basketline

-- DROP TABLE w_basketline;

CREATE TABLE w_basketline FOR SYSTEM NAME wbsktln
(
  w_basketline_id                FOR COLUMN w_blid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  w_basket_id                    FOR COLUMN w_bid           DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL,
  qty                                                       DECFLOAT(16) NOT NULL DEFAULT 0,
  price                                                     DECFLOAT(16) NOT NULL DEFAULT 0,
  product                                                   VARCHAR(40) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_basketline_pkey PRIMARY KEY (w_basketline_id),
  CONSTRAINT w_basketline_isactive_check CHECK (isactive in ('Y','N'))
)
;

