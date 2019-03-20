-- Table: c_rfqline

-- DROP TABLE c_rfqline;

CREATE TABLE c_rfqline
(
  c_rfqline_id                   FOR COLUMN c_rqlid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_rfq_id                                                  DECIMAL(10,0) NOT NULL,
  line                                                      DECIMAL(10,0) NOT NULL DEFAULT 0,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  m_attributesetinstance_id      FOR COLUMN m_asi           DECIMAL(10,0) DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  deliverydays                   FOR COLUMN deldays         DECIMAL(10,0) DEFAULT 0,
  dateworkcomplete               FOR COLUMN datwrkc         TIMESTAMP,
  dateworkstart                  FOR COLUMN datwrks         TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_rfqline_pkey PRIMARY KEY (c_rfqline_id),
  CONSTRAINT c_rfqline_isactive_check CHECK (isactive in ('Y','N'))
)
;

