-- Table: c_currency_trl

-- DROP TABLE c_currency_trl;

CREATE TABLE c_currency_trl FOR SYSTEM NAME ccurrt
(
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  cursymbol                                                 VARCHAR(10),
  description                    FOR COLUMN desc            VARCHAR(255) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_currency_trl_pkey PRIMARY KEY (c_currency_id, ad_language),
  CONSTRAINT c_currency_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_currency_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

