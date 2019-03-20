-- Table: cm_template_ad_cat

-- DROP TABLE cm_template_ad_cat;

CREATE TABLE cm_template_ad_cat FOR SYSTEM NAME cmtplacat
(
  cm_ad_cat_id                   FOR COLUMN cm_adcid        DECIMAL(10,0) NOT NULL,
  cm_template_id                 FOR COLUMN cm_tmplid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT cm_template_ad_cat_pkey PRIMARY KEY (cm_ad_cat_id, cm_template_id),
  CONSTRAINT cm_template_ad_cat_isactive_check CHECK (isactive in ('Y','N'))
)
;

