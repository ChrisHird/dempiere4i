-- Table: c_currency

-- DROP TABLE c_currency;

CREATE TABLE c_currency
(
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  iso_code                                                  character(3) NOT NULL,
  cursymbol                                                 VARCHAR(10),
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  stdprecision                   FOR COLUMN stdprec         DECIMAL(10,0) NOT NULL,
  costingprecision               FOR COLUMN cstprec         DECIMAL(10,0) NOT NULL,
  iseuro                                                    CHAR(1) NOT NULL DEFAULT 'N',
  isemumember                    FOR COLUMN isemumbr        CHAR(1) NOT NULL DEFAULT 'N',
  emuentrydate                   FOR COLUMN emuentdat       TIMESTAMP,
  emurate                                                   DECFLOAT(16) DEFAULT 0,
  roundofffactor                 FOR COLUMN rndoftr         DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_currency_pkey PRIMARY KEY (c_currency_id),
  CONSTRAINT c_currency_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_currency_isemumember_check CHECK (isemumember in ('Y','N')),
  CONSTRAINT c_currency_iseuro_check CHECK (iseuro in ('Y','N'))
)
;

