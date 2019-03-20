-- Table: c_subscription_delivery

-- DROP TABLE c_subscription_delivery;

CREATE TABLE c_subscription_delivery FOR SYSTEM NAME csubdlv
(
  c_subscription_delivery_id     FOR COLUMN c_sdid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_subscription_id              FOR COLUMN c_sid           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_subscription_delivery_pkey PRIMARY KEY (c_subscription_delivery_id)
)
  ;
