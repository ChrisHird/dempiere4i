-- Table: c_dunninglevel

-- DROP TABLE c_dunninglevel;

CREATE TABLE c_dunninglevel FOR SYSTEM NAME cdunlvl
(
  c_dunninglevel_id              FOR COLUMN c_dlid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_dunning_id                   FOR COLUMN c_did           DECIMAL(10,0) NOT NULL,
  printname                                                 VARCHAR(60) NOT NULL,
  daysafterdue                   FOR COLUMN dayaftdue       DECIMAL(10,0) NOT NULL,
  daysbetweendunning             FOR COLUMN daybtwndun      DECIMAL(10,0) NOT NULL,
  note                                                      VARCHAR(2000),
  chargeinterest                 FOR COLUMN crgint          CHAR(1) NOT NULL DEFAULT 'Y',
  interestpercent                FOR COLUMN intpc           DECFLOAT(16) DEFAULT 0,
  chargefee                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  feeamt                                                    DECFLOAT(16) DEFAULT 0,
  dunning_printformat_id         FOR COLUMN dunprtfmt       DECIMAL(10,0),
  name                                                      VARCHAR(60) NOT NULL DEFAULT 'x',
  description                    FOR COLUMN desc            VARCHAR(255),
  isshowalldue                   FOR COLUMN issadue         CHAR(1) NOT NULL DEFAULT 'N',
  isshownotdue                   FOR COLUMN issndue         CHAR(1) NOT NULL DEFAULT 'N',
  issetcreditstop                FOR COLUMN issetcrstp      CHAR(1) NOT NULL DEFAULT 'N',
  issetpaymentterm               FOR COLUMN issetptrm       CHAR(1) NOT NULL DEFAULT 'N',
  c_paymentterm_id               FOR COLUMN c_ptid          DECIMAL(10,0),
  invoicecollectiontype          FOR COLUMN invcoltyp       CHAR(1),
  isstatement                    FOR COLUMN isstmnt         CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  isincludepayments              FOR COLUMN isipaymnt       CHAR(1) DEFAULT 'Y',
  isrange                                                   CHAR(1) DEFAULT 'N',
  daysfrom                                                  DECIMAL(10,0),
  daysto                                                    DECIMAL(10,0),
  CONSTRAINT c_dunninglevel_pkey PRIMARY KEY (c_dunninglevel_id),
  CONSTRAINT c_dunninglevel_chargefee_check CHECK (chargefee in ('Y','N')),
  CONSTRAINT c_dunninglevel_chargeinterest_check CHECK (chargeinterest in ('Y','N')),
  CONSTRAINT c_dunninglevel_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_dunninglevel_isincludepayments_check CHECK (isincludepayments in ('Y','N')),
  CONSTRAINT c_dunninglevel_isrange_check CHECK (isrange in ('Y','N')),
  CONSTRAINT c_dunninglevel_isstatement_check CHECK (isstatement in ('Y','N'))
)
;

