-- Table: ad_printlabelline_trl

-- DROP TABLE ad_printlabelline_trl;

CREATE TABLE ad_printlabelline_trl FOR SYSTEM NAME adprtllt
(
  ad_printlabelline_id           FOR COLUMN ad_pllid        DECIMAL(10,0) NOT NULL,
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  printname                                                 VARCHAR(60),
  istranslated                   FOR COLUMN istrn           CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printlabelline_trl_pkey PRIMARY KEY (ad_printlabelline_id, ad_language),
  CONSTRAINT ad_printlabelline_trl_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_printlabelline_trl_istranslated_check CHECK (istranslated in ('Y','N'))
)
;

