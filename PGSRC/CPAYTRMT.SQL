-- Table: c_paymentterm_trl

-- DROP TABLE c_paymentterm_trl;

CREATE TABLE c_paymentterm_trl FOR SYSTEM NAME cpaytrmt
(
  c_paymentterm_id               FOR COLUMN c_ptid          DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
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
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_paymentterm_trl_pkey PRIMARY KEY (c_paymentterm_id, ad_language),
  CONSTRAINT c_paymentterm_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_paymentterm_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

