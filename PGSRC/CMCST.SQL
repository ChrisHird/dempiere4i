-- Table: cm_cstage_trl

-- DROP TABLE cm_cstage_trl;

CREATE TABLE cm_cstage_trl FOR SYSTEM NAME cmcst
(
  cm_cstage_id                   FOR COLUMN cm_stgid        DECIMAL(10,0) NOT NULL,
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
  title                                                     VARCHAR(60),
  meta_description               FOR COLUMN meta_descr      VARCHAR(2000),
  meta_keywords                  FOR COLUMN meta_kwd        VARCHAR(2000),
  structurexml                   FOR COLUMN structxml       VARCHAR(2000),
  containerxml                   FOR COLUMN cnrxml          VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_cstage_trl_pkey PRIMARY KEY (cm_cstage_id, ad_language),
  CONSTRAINT cm_cstage_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT cm_cstage_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

