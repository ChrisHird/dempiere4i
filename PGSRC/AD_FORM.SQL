-- Table: ad_form

-- DROP TABLE ad_form;

CREATE TABLE ad_form
(
  ad_form_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  accesslevel                    FOR COLUMN acclvl          CHAR(1) NOT NULL,
  classname                                                 VARCHAR(60),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  isbetafunctionality            FOR COLUMN isbtafunc       CHAR(1) NOT NULL DEFAULT 'N',
  jspurl                                                    VARCHAR(120),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_form_pkey PRIMARY KEY (ad_form_id),
  CONSTRAINT ad_form_isactive_check CHECK (isactive in ('Y','N'))
)
;

