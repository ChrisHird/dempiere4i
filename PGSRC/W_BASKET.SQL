-- Table: w_basket

-- DROP TABLE w_basket;

CREATE TABLE w_basket
(
  w_basket_id                    FOR COLUMN w_bid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  session_id                                                VARCHAR(60) NOT NULL,
  email                                                     VARCHAR(60),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_basket_pkey PRIMARY KEY (w_basket_id),
  CONSTRAINT w_basket_isactive_check CHECK (isactive in ('Y','N'))
)
;

