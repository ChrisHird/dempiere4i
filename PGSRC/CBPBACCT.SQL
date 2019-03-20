-- Table: c_bp_bankaccount

-- DROP TABLE c_bp_bankaccount;

CREATE TABLE c_bp_bankaccount FOR SYSTEM NAME cbpbacct
(
  c_bp_bankaccount_id            FOR COLUMN c_bpbaid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  c_bank_id                                                 DECIMAL(10,0),
  isach                                                     CHAR(1) NOT NULL DEFAULT 'N',
  bankaccounttype                FOR COLUMN bacttyp         CHAR(1),
  routingno                                                 VARCHAR(20),
  accountno                                                 VARCHAR(20),
  creditcardtype                 FOR COLUMN cctyp           CHAR(1),
  creditcardnumber               FOR COLUMN ccnum           VARCHAR(20),
  creditcardvv                   FOR COLUMN ccvv            VARCHAR(4),
  creditcardexpmm                FOR COLUMN ccemm           DECIMAL(10,0),
  creditcardexpyy                FOR COLUMN cceyy           DECIMAL(10,0),
  a_name                                                    VARCHAR(60),
  a_street                                                  VARCHAR(60),
  a_city                                                    VARCHAR(60),
  a_state                                                   VARCHAR(40),
  a_zip                                                     VARCHAR(20),
  a_ident_dl                                                VARCHAR(20),
  a_email                                                   VARCHAR(60),
  a_ident_ssn                    FOR COLUMN a_issn          VARCHAR(20),
  r_avsaddr                                                 CHAR(1),
  r_avszip                                                  CHAR(1),
  a_country                                                 VARCHAR(40),
  ad_user_id                                                DECIMAL(10,0),
  bpbankacctuse                  FOR COLUMN bpbnkau         CHAR(1),
  ispayrollaccount               FOR COLUMN ispract         CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bp_bankaccount_pkey PRIMARY KEY (c_bp_bankaccount_id),
  CONSTRAINT c_bp_bankaccount_isach_check CHECK (isach in ('Y','N')),
  CONSTRAINT c_bp_bankaccount_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bp_bankaccount_ispayrollaccount_check CHECK (ispayrollaccount in ('Y','N'))
)
;

