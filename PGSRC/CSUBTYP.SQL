-- Table: c_subscriptiontype

-- DROP TABLE c_subscriptiontype;

CREATE TABLE c_subscriptiontype FOR SYSTEM NAME csubtyp
(
  c_subscriptiontype_id          FOR COLUMN c_stid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL,
  frequency                                                 DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_subscriptiontype_pkey PRIMARY KEY (c_subscriptiontype_id)
)
;

