-- Table: c_acctschema_gl

-- DROP TABLE c_acctschema_gl;

CREATE TABLE c_acctschema_gl FOR SYSTEM NAME caccsgl
(
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  usesuspensebalancing           FOR COLUMN ususpbal        CHAR(1) NOT NULL DEFAULT 'Y',
  suspensebalancing_acct         FOR COLUMN sbala           DECIMAL(10,0),
  usesuspenseerror               FOR COLUMN ususperr        CHAR(1) NOT NULL DEFAULT 'Y',
  suspenseerror_acct             FOR COLUMN serra           DECIMAL(10,0),
  usecurrencybalancing           FOR COLUMN usecurbal       CHAR(1) NOT NULL DEFAULT 'Y',
  currencybalancing_acct         FOR COLUMN curbala         DECIMAL(10,0),
  retainedearning_acct           FOR COLUMN retea           DECIMAL(10,0) NOT NULL,
  incomesummary_acct             FOR COLUMN incsuma         DECIMAL(10,0) NOT NULL,
  intercompanydueto_acct         FOR COLUMN intdta          DECIMAL(10,0) NOT NULL,
  intercompanyduefrom_acct       FOR COLUMN intdfa          DECIMAL(10,0) NOT NULL,
  ppvoffset_acct                 FOR COLUMN ppvoa           DECIMAL(10,0) NOT NULL,
  commitmentoffset_acct          FOR COLUMN cmtosact        DECIMAL(10,0) NOT NULL,
  commitmentoffsetsales_acct     FOR COLUMN cmtossact       DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_acctschema_gl_pkey PRIMARY KEY (c_acctschema_id),
  CONSTRAINT c_acctschema_gl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_acctschema_gl_usecurrencybalancing_check CHECK (usecurrencybalancing in ('Y','N')),
  CONSTRAINT c_acctschema_gl_usesuspensebalancing_check CHECK (usesuspensebalancing in ('Y','N')),
  CONSTRAINT c_acctschema_gl_usesuspenseerror_check CHECK (usesuspenseerror in ('Y','N'))
)
;

