-- Table: c_paymentterm

-- DROP TABLE c_paymentterm;

CREATE TABLE c_paymentterm FOR SYSTEM NAME cpaytrm
(
  c_paymentterm_id               FOR COLUMN c_ptid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  documentnote                   FOR COLUMN docnote         VARCHAR(2000),
  afterdelivery                  FOR COLUMN aftdly          CHAR(1) NOT NULL DEFAULT 'N',
  isduefixed                                                CHAR(1) NOT NULL DEFAULT 'N',
  netdays                                                   DECIMAL(10,0) NOT NULL,
  gracedays                                                 DECIMAL(10,0) NOT NULL,
  fixmonthcutoff                 FOR COLUMN fmco            DECIMAL(10,0),
  fixmonthday                    FOR COLUMN fmd             DECIMAL(10,0),
  fixmonthoffset                 FOR COLUMN fmo             DECIMAL(10,0),
  discountdays                   FOR COLUMN dscday          DECIMAL(10,0) NOT NULL,
  discount                                                  DECFLOAT(16) NOT NULL,
  discountdays2                  FOR COLUMN dscday2         DECIMAL(10,0) NOT NULL,
  discount2                                                 DECFLOAT(16) NOT NULL,
  isnextbusinessday              FOR COLUMN isnxtbd         CHAR(1) DEFAULT 'Y',
  isdefault                                                 CHAR(1) DEFAULT 'N',
  value                                                     VARCHAR(40) NOT NULL,
  netday                                                    CHAR(1),
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_paymentterm_pkey PRIMARY KEY (c_paymentterm_id),
  CONSTRAINT c_paymentterm_afterdelivery_check CHECK (afterdelivery in ('Y','N')),
  CONSTRAINT c_paymentterm_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_paymentterm_isduefixed_check CHECK (isduefixed in ('Y','N')),
  CONSTRAINT c_paymentterm_isnextbusinessday_check CHECK (isnextbusinessday in ('Y','N'))
)
;

