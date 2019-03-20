-- Table: exp_formatline

-- DROP TABLE exp_formatline;

CREATE TABLE exp_formatline FOR SYSTEM NAME expfmtln
(
  exp_formatline_id              FOR COLUMN exp_fmtlid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  exp_format_id                  FOR COLUMN exp_fid         DECIMAL(10,0),
  "position"                                                DECIMAL(10,0),
  ismandatory                    FOR COLUMN ismand          CHAR(1),
  type                                                      CHAR(1) NOT NULL DEFAULT 'E',
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  exp_embeddedformat_id          FOR COLUMN exp_efid        DECIMAL(10,0),
  ispartuniqueindex              FOR COLUMN ispuidx         CHAR(1) DEFAULT 'N',
  dateformat                                                VARCHAR(40),
  iscreatenonexisting            FOR COLUMN iscrtnexst      CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT exp_formatline_pkey PRIMARY KEY (exp_formatline_id),
  CONSTRAINT exp_formatline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT exp_formatline_iscreatenonexisting_check CHECK (iscreatenonexisting in ('Y','N')),
  CONSTRAINT exp_formatline_ismandatory_check CHECK (ismandatory in ('Y','N')),
  CONSTRAINT exp_formatline_ispartuniqueindex_check CHECK (ispartuniqueindex in ('Y','N'))
)
;

