-- Table: c_bankstatementmatcher

-- DROP TABLE c_bankstatementmatcher;

CREATE TABLE c_bankstatementmatcher FOR SYSTEM NAME cbstmtmch
(
  c_bankstatementmatcher_id      FOR COLUMN c_bsmid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  classname                                                 VARCHAR(60) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bankstatementmatcher_pkey PRIMARY KEY (c_bankstatementmatcher_id),
  CONSTRAINT c_bankstatementmatcher_isactive_check CHECK (isactive in ('Y','N'))
)
;

