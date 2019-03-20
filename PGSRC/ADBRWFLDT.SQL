-- Table: ad_browse_field_trl

-- DROP TABLE ad_browse_field_trl;

CREATE TABLE ad_browse_field_trl FOR SYSTEM NAME adbrwfldt
(
  ad_browse_field_id             FOR COLUMN ad_bwsfid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  help                                                      VARCHAR(2000) DEFAULT NULL,
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_browse_field_trl_key PRIMARY KEY (ad_browse_field_id, ad_language),
  CONSTRAINT ad_browse_field_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_browse_field_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

