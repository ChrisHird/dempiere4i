-- Table: c_charge_trl

-- DROP TABLE c_charge_trl;

CREATE TABLE c_charge_trl FOR SYSTEM NAME cchrgt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_charge_trl_pkey PRIMARY KEY (ad_language, c_charge_id),
  CONSTRAINT c_charge_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_charge_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

