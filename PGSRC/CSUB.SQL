-- Table: c_subscription

-- DROP TABLE c_subscription;

CREATE TABLE c_subscription FOR SYSTEM NAME csub
(
  c_subscription_id              FOR COLUMN c_sid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  c_subscriptiontype_id          FOR COLUMN c_stid          DECIMAL(10,0) NOT NULL,
  startdate                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  paiduntildate                  FOR COLUMN paidudat         TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isdue                                                     CHAR(1) NOT NULL DEFAULT 'N',
  renewaldate                    FOR COLUMN rnwdat           TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_subscription_pkey PRIMARY KEY (c_subscription_id)
)
  ;
