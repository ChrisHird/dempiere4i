-- Table: c_acctschema

-- DROP TABLE c_acctschema;

CREATE TABLE c_acctschema FOR SYSTEM NAME caccs
(
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  gaap                                                      CHAR(2) NOT NULL,
  isaccrual                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  costingmethod                  FOR COLUMN cstmthd         CHAR(1) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  autoperiodcontrol              FOR COLUMN autpdctl        CHAR(1) NOT NULL DEFAULT 'N',
  c_period_id                    FOR COLUMN c_pid           DECIMAL(10,0),
  period_openhistory             FOR COLUMN prdohst         DECIMAL(10,0),
  period_openfuture              FOR COLUMN prdofut         DECIMAL(10,0),
  separator                                                 CHAR(1) NOT NULL,
  hasalias                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  hascombination                 FOR COLUMN hascbnn         CHAR(1) NOT NULL DEFAULT 'Y',
  istradediscountposted          FOR COLUMN istrddpst       CHAR(1) NOT NULL DEFAULT 'N',
  isdiscountcorrectstax          FOR COLUMN isdsccrttx      CHAR(1) NOT NULL DEFAULT 'N',
  m_costtype_id                  FOR COLUMN m_ctid          DECIMAL(10,0),
  costinglevel                   FOR COLUMN cstlvl          CHAR(1) NOT NULL DEFAULT 'C',
  isadjustcogs                   FOR COLUMN isadjcogs       CHAR(1) NOT NULL DEFAULT 'N',
  ad_orgonly_id                  FOR COLUMN ad_ooid         DECIMAL(10,0),
  ispostservices                 FOR COLUMN ispstsrv        CHAR(1) NOT NULL DEFAULT 'N',
  isexplicitcostadjustment       FOR COLUMN isexcadj        CHAR(1) NOT NULL DEFAULT 'N',
  commitmenttype                 FOR COLUMN cmttype         CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  taxcorrectiontype              FOR COLUMN taxcortype      CHAR(1),
  isallownegativeposting         FOR COLUMN isalwnegp       CHAR(1) DEFAULT 'Y',
  ispostifclearingequal          FOR COLUMN ispstclreq      CHAR(1) DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_acctschema_pkey PRIMARY KEY (c_acctschema_id),
  CONSTRAINT c_acctschema_autoperiodcontrol_check CHECK (autoperiodcontrol in ('Y','N')),
  CONSTRAINT c_acctschema_hasalias_check CHECK (hasalias in ('Y','N')),
  CONSTRAINT c_acctschema_hascombination_check CHECK (hascombination in ('Y','N')),
  CONSTRAINT c_acctschema_isaccrual_check CHECK (isaccrual in ('Y','N')),
  CONSTRAINT c_acctschema_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_acctschema_isallownegativeposting_check CHECK (isallownegativeposting in ('Y','N')),
  CONSTRAINT c_acctschema_isdiscountcorrectstax_check CHECK (isdiscountcorrectstax in ('Y','N')),
  CONSTRAINT c_acctschema_ispostifclearingequal_check CHECK (ispostifclearingequal in ('Y','N')),
  CONSTRAINT c_acctschema_istradediscountposted_check CHECK (istradediscountposted in ('Y','N'))
)
;

