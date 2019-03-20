-- Table: c_commission

-- DROP TABLE c_commission;

CREATE TABLE c_commission FOR SYSTEM NAME ccom
(
  c_commission_id                FOR COLUMN c_comid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL,
  docbasistype                   FOR COLUMN docbtyp         CHAR(1) NOT NULL,
  listdetails                    FOR COLUMN lstdets         CHAR(1) NOT NULL DEFAULT 'N',
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  createfrom                                                CHAR(1),
  processing                                                CHAR(1),
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0) NOT NULL,
  c_commissiongroup_id           FOR COLUMN c_comgid        DECIMAL(10,0),
  istotallypaid                  FOR COLUMN istotpd         CHAR(1) DEFAULT 'N',
  isallowrma                                                CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  isdaysduefrompaymentterm       FOR COLUMN isddfpytrm      CHAR(1) NOT NULL DEFAULT 'Y',
  CONSTRAINT c_commission_pkey PRIMARY KEY (c_commission_id),
  CONSTRAINT c_commission_createfrom_check CHECK (createfrom in ('Y','N')),
  CONSTRAINT c_commission_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_commission_isallowrma_check CHECK (isallowrma in ('Y','N')),
  CONSTRAINT c_commission_isdaysduefrompaymentterm_check CHECK (isdaysduefrompaymentterm in ('Y','N')),
  CONSTRAINT c_commission_istotallypaid_check CHECK (istotallypaid in ('Y','N')),
  CONSTRAINT c_commission_listdetails_check CHECK (listdetails in ('Y','N'))
)
;

