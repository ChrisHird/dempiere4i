-- Table: c_uom_trl

-- DROP TABLE c_uom_trl;

CREATE TABLE c_uom_trl
(
  c_uom_id                                                  DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uomsymbol                                                 VARCHAR(10),
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_uom_trl_pkey PRIMARY KEY (c_uom_id, ad_language),
  CONSTRAINT c_uom_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_uom_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

