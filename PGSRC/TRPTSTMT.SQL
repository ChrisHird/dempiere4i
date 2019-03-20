-- Table: t_reportstatement

-- DROP TABLE t_reportstatement;

CREATE TABLE t_reportstatement FOR SYSTEM NAME trptstmt
(
  ad_pinstance_id                FOR COLUMN ad_piid         DECIMAL(10,0) NOT NULL,
  fact_acct_id                   FOR COLUMN fact_aid        DECIMAL(10,0) NOT NULL,
  levelno                                                   DECIMAL(10,0) NOT NULL,
  dateacc                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  name                                                      VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  amtacctdr                                                 DECFLOAT(16) DEFAULT 0,
  amtacctcr                                                 DECFLOAT(16) DEFAULT 0,
  balance                                                   DECFLOAT(16) DEFAULT 0,
  qty                                                       DECFLOAT(16) DEFAULT 0,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  account_id                                                DECIMAL(10,0) NOT NULL,
  accountname                    FOR COLUMN actname         VARCHAR(200) DEFAULT NULL,
  accountvalue                   FOR COLUMN actval          VARCHAR(40) DEFAULT NULL,
  accounttype                    FOR COLUMN accttyp         CHAR(1) DEFAULT NULL,
  CONSTRAINT t_reportstatement_pkey PRIMARY KEY (ad_pinstance_id, fact_acct_id, account_id)
)
  ;
