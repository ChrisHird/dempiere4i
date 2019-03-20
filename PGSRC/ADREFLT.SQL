-- Table: ad_ref_list_trl

-- DROP TABLE ad_ref_list_trl;

CREATE TABLE ad_ref_list_trl FOR SYSTEM NAME adreflt
(
  ad_ref_list_id                 FOR COLUMN ad_rlid         DECIMAL(10,0) NOT NULL,
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
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_ref_list_trl_pkey PRIMARY KEY (ad_ref_list_id, ad_language),
  CONSTRAINT ad_ref_list_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_ref_list_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

