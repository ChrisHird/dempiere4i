-- Table: a_fundingmode_acct

-- DROP TABLE a_fundingmode_acct;

CREATE TABLE a_fundingmode_acct FOR SYSTEM NAME afundma
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  a_fundingmode_id               FOR COLUMN a_fndmid        DECIMAL(10,0) NOT NULL,
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  a_fundingmode_acct             FOR COLUMN a_fndma         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT a_fundingmode_acct_isactive_check CHECK (isactive in ('Y','N'))
)
;

