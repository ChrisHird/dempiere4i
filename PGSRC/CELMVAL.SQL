-- Table: c_elementvalue

-- DROP TABLE c_elementvalue;

CREATE TABLE c_elementvalue FOR SYSTEM NAME celmval
(
  c_elementvalue_id              FOR COLUMN c_evid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  accounttype                    FOR COLUMN accttyp         CHAR(1) NOT NULL,
  accountsign                    FOR COLUMN actsgn          CHAR(1) NOT NULL,
  isdoccontrolled                FOR COLUMN isdocctl        CHAR(1) DEFAULT 'N',
  c_element_id                   FOR COLUMN c_eid           DECIMAL(10,0) NOT NULL,
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  postactual                                                CHAR(1) NOT NULL DEFAULT 'Y',
  postbudget                                                CHAR(1) NOT NULL DEFAULT 'Y',
  postencumbrance                FOR COLUMN postence        CHAR(1) NOT NULL DEFAULT 'Y',
  poststatistical                FOR COLUMN poststat        CHAR(1) NOT NULL DEFAULT 'Y',
  isbankaccount                  FOR COLUMN isbnkact        CHAR(1) DEFAULT 'N',
  c_bankaccount_id               FOR COLUMN c_baid          DECIMAL(10,0),
  isforeigncurrency              FOR COLUMN isfcurr         CHAR(1) DEFAULT 'N',
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_elementvalue_pkey PRIMARY KEY (c_elementvalue_id),
  CONSTRAINT c_elementvalue_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_elementvalue_isbankaccount_check CHECK (isbankaccount in ('Y','N')),
  CONSTRAINT c_elementvalue_isdoccontrolled_check CHECK (isdoccontrolled in ('Y','N')),
  CONSTRAINT c_elementvalue_isforeigncurrency_check CHECK (isforeigncurrency in ('Y','N')),
  CONSTRAINT c_elementvalue_postactual_check CHECK (postactual in ('Y','N')),
  CONSTRAINT c_elementvalue_postbudget_check CHECK (postbudget in ('Y','N')),
  CONSTRAINT c_elementvalue_postencumbrance_check CHECK (postencumbrance in ('Y','N')),
  CONSTRAINT c_elementvalue_poststatistical_check CHECK (poststatistical in ('Y','N'))
)
;

