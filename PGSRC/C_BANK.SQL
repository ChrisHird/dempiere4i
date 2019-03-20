-- Table: c_bank

-- DROP TABLE c_bank;

CREATE TABLE c_bank
(
  c_bank_id                                                 DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  routingno                                                 VARCHAR(20) NOT NULL,
  c_location_id                  FOR COLUMN c_lid           DECIMAL(10,0),
  swiftcode                                                 VARCHAR(20),
  isownbank                                                 CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  banktype                                                  CHAR(1) DEFAULT 'B',
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  CONSTRAINT c_bank_pkey PRIMARY KEY (c_bank_id),
  CONSTRAINT c_bank_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bank_isownbank_check CHECK (isownbank in ('Y','N'))
)
;

