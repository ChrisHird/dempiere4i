-- Table: c_charge

-- DROP TABLE c_charge;

CREATE TABLE c_charge
(
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  chargeamt                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  issametax                                                 CHAR(1) NOT NULL DEFAULT 'N',
  issamecurrency                 FOR COLUMN issamecurr      CHAR(1) NOT NULL DEFAULT 'N',
  c_taxcategory_id               FOR COLUMN c_tcid          DECIMAL(10,0),
  istaxincluded                  FOR COLUMN itinc           CHAR(1) NOT NULL DEFAULT 'N',
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_chargetype_id                FOR COLUMN c_chrgtid       DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  c_taxtype_id                   FOR COLUMN c_txtypid       DECIMAL(10,0),
  CONSTRAINT c_charge_pkey PRIMARY KEY (c_charge_id),
  CONSTRAINT c_charge_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_charge_issamecurrency_check CHECK (issamecurrency in ('Y','N')),
  CONSTRAINT c_charge_issametax_check CHECK (issametax in ('Y','N'))
)
;

