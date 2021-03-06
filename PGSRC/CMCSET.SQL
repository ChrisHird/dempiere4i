-- Table: cm_cstage_element_trl

-- DROP TABLE cm_cstage_element_trl;

CREATE TABLE cm_cstage_element_trl FOR SYSTEM NAME cmcset
(
  cm_cstage_element_id           FOR COLUMN cm_cseid        DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  contenthtml                    FOR COLUMN conthtml        CLOB,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_cstage_element_trl_pkey PRIMARY KEY (cm_cstage_element_id, ad_language),
  CONSTRAINT cm_cstage_element_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_cstage_element_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

