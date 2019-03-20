-- Table: i_conversion_rate

-- DROP TABLE i_conversion_rate;

CREATE TABLE i_conversion_rate FOR SYSTEM NAME icvnrte
(
  i_conversion_rate_id           FOR COLUMN i_crid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) DEFAULT 'Y',
  created                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  c_conversion_rate_id           FOR COLUMN c_cvnrid        DECIMAL(10,0),
  iso_code                                                  character(3),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  iso_code_to                    FOR COLUMN isocdet         character(3),
  c_currency_id_to               FOR COLUMN c_cuidto        DECIMAL(10,0),
  conversiontypevalue            FOR COLUMN cvntypval       VARCHAR(40),
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0),
  validfrom                                                 TIMESTAMP,
  validto                                                   TIMESTAMP,
  multiplyrate                   FOR COLUMN multrte         DECFLOAT(16),
  dividerate                                                DECFLOAT(16),
  createreciprocalrate           FOR COLUMN crtrecprte      CHAR(1) DEFAULT 'N',
  i_isimported                   FOR COLUMN i_ii            CHAR(1) DEFAULT 'N',
  i_errormsg                                                VARCHAR(2000),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_conversion_rate_pkey PRIMARY KEY (i_conversion_rate_id),
  CONSTRAINT i_conversion_rate_createreciprocalrate_check CHECK (createreciprocalrate in ('Y','N')),
  CONSTRAINT i_conversion_rate_isactive_check CHECK (isactive in ('Y','N'))
)
;

