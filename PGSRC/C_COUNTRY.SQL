-- Table: c_country

-- DROP TABLE c_country;

CREATE TABLE c_country
(
  c_country_id                   FOR COLUMN c_cntyid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  countrycode                    FOR COLUMN cntycde         CHAR(2) NOT NULL,
  hasregion                                                 CHAR(1) NOT NULL DEFAULT 'N',
  regionname                                                VARCHAR(60),
  expressionphone                FOR COLUMN expphn          VARCHAR(20),
  displaysequence                FOR COLUMN dspseq          VARCHAR(20) NOT NULL,
  expressionpostal               FOR COLUMN exppost         VARCHAR(20),
  haspostal_add                  FOR COLUMN haspostad       CHAR(1) NOT NULL DEFAULT 'N',
  expressionpostal_add           FOR COLUMN expposta        VARCHAR(20),
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  displaysequencelocal           FOR COLUMN dspseql         VARCHAR(20),
  isaddresslinesreverse          FOR COLUMN isadrlrv        CHAR(1) NOT NULL DEFAULT 'N',
  isaddresslineslocalreverse     FOR COLUMN isadrllrv       CHAR(1) NOT NULL DEFAULT 'N',
  expressionbankroutingno        FOR COLUMN expbrtgn        VARCHAR(20),
  expressionbankaccountno        FOR COLUMN expban          VARCHAR(20),
  mediasize                                                 VARCHAR(40),
  ispostcodelookup               FOR COLUMN ispstclu        CHAR(1) NOT NULL DEFAULT 'N',
  lookupclassname                FOR COLUMN luclsnm         VARCHAR(255),
  lookupclientid                 FOR COLUMN lucltid         VARCHAR(50),
  lookuppassword                 FOR COLUMN lupwd           VARCHAR(50),
  lookupurl                                                 VARCHAR(100),
  allowcitiesoutoflist           FOR COLUMN alwcotfl        CHAR(1) DEFAULT 'Y',
  capturesequence                FOR COLUMN cptseq          VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_country_pkey PRIMARY KEY (c_country_id),
  CONSTRAINT c_country_allowcitiesoutoflist_check CHECK (allowcitiesoutoflist in ('Y','N')),
  CONSTRAINT c_country_haspostal_add_check CHECK (haspostal_add in ('Y','N')),
  CONSTRAINT c_country_hasregion_check CHECK (hasregion in ('Y','N')),
  CONSTRAINT c_country_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_country_ispostcodelookup_check CHECK (ispostcodelookup in ('Y','N'))
)
;

