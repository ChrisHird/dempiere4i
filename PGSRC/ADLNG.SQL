-- Table: ad_language

-- DROP TABLE ad_language;

CREATE TABLE ad_language FOR SYSTEM NAME adlng
(
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'N',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  languageiso                    FOR COLUMN lngiso          CHAR(2),
  countrycode                    FOR COLUMN cntycde         CHAR(2),
  isbaselanguage                 FOR COLUMN isbselng        CHAR(1) NOT NULL DEFAULT 'N',
  issystemlanguage               FOR COLUMN issyslng        CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  ad_language_id                 FOR COLUMN ad_lngid        DECIMAL(10,0) NOT NULL,
  isdecimalpoint                 FOR COLUMN isdecpt         CHAR(1) NOT NULL DEFAULT 'Y',
  datepattern                    FOR COLUMN dtaptn          VARCHAR(20),
  timepattern                    FOR COLUMN timptn          VARCHAR(20),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_language_pkey PRIMARY KEY (ad_language),
  CONSTRAINT ad_language_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_language_isbaselanguage_check CHECK (isbaselanguage in ('Y','N')),
  CONSTRAINT ad_language_issystemlanguage_check CHECK (issystemlanguage in ('Y','N'))
)
;

