-- Table: w_store_trl

-- DROP TABLE w_store_trl;

CREATE TABLE w_store_trl FOR SYSTEM NAME wstrtrl
(
  w_store_id                                                DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  webinfo                                                   VARCHAR(2000),
  webparam1                                                 VARCHAR(2000),
  webparam2                                                 VARCHAR(2000),
  webparam3                                                 VARCHAR(2000),
  webparam4                                                 VARCHAR(2000),
  webparam5                                                 VARCHAR(2000),
  webparam6                                                 VARCHAR(2000),
  emailheader                    FOR COLUMN emhdr           VARCHAR(2000),
  emailfooter                    FOR COLUMN emftr           VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_store_trl_pkey PRIMARY KEY (w_store_id, ad_language),
  CONSTRAINT w_store_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT w_store_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

