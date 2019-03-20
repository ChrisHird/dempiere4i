-- Table: m_product_trl

-- DROP TABLE m_product_trl;

CREATE TABLE m_product_trl FOR SYSTEM NAME mprodt
(
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(255) NOT NULL,
  documentnote                   FOR COLUMN docnote         VARCHAR(2000),
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT m_product_trl_pkey PRIMARY KEY (m_product_id, ad_language),
  CONSTRAINT m_product_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT m_product_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

