-- Table: pp_product_bomline_trl

-- DROP TABLE pp_product_bomline_trl;

CREATE TABLE pp_product_bomline_trl FOR SYSTEM NAME ppprdbomlt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL,
  pp_product_bomline_id          FOR COLUMN pp_pbomlid      DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pp_product_bomline_trl_pkey PRIMARY KEY (ad_language, pp_product_bomline_id),
  CONSTRAINT pp_product_bomline_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pp_product_bomline_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

