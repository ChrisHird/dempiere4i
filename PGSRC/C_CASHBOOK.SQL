-- Table: c_cashbook

-- DROP TABLE c_cashbook;

CREATE TABLE c_cashbook
(
  c_cashbook_id                  FOR COLUMN c_cbid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_cashbook_pkey PRIMARY KEY (c_cashbook_id),
  CONSTRAINT c_cashbook_isactive_check CHECK (isactive in ('Y','N'))
)
;

