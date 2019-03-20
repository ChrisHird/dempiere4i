-- Table: c_bankmatcher

-- DROP TABLE c_bankmatcher;

CREATE TABLE c_bankmatcher FOR SYSTEM NAME cbnkmtc
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bankmatcher_id               FOR COLUMN c_bmid          DECIMAL(10,0) NOT NULL,
  c_bank_id                                                 DECIMAL(10,0) NOT NULL,
  c_bankstatementmatcher_id      FOR COLUMN c_bsmid         DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  seqno                                                     DECIMAL(10,0),
  CONSTRAINT c_bankmatcher_key PRIMARY KEY (c_bankmatcher_id),
  CONSTRAINT c_bankmatcher_isactive_check CHECK (isactive in ('Y','N'))
)
;

