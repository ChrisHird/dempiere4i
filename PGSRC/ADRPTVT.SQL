-- Table: ad_reportview_trl

-- DROP TABLE ad_reportview_trl;

CREATE TABLE ad_reportview_trl FOR SYSTEM NAME adrptvt
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_reportview_id               FOR COLUMN ad_rptvid       DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  name                                                      VARCHAR(60) NOT NULL,
  printname                                                 VARCHAR(60),
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_reportview_trl_key PRIMARY KEY (ad_language, ad_reportview_id),
  CONSTRAINT ad_reportview_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_reportview_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

