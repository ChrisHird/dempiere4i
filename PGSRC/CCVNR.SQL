-- Table: c_conversion_rate

-- DROP TABLE c_conversion_rate;

CREATE TABLE c_conversion_rate FOR SYSTEM NAME ccvnr
(
  c_conversion_rate_id           FOR COLUMN c_cvnrid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  c_currency_id_to               FOR COLUMN c_cuidto        DECIMAL(10,0) NOT NULL,
  validfrom                                                  TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  validto                                                   TIMESTAMP,
  multiplyrate                   FOR COLUMN multrte         DECFLOAT(16) NOT NULL DEFAULT 0,
  dividerate                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  c_conversiontype_id            FOR COLUMN c_cnvtid        DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_conversion_rate_pkey PRIMARY KEY (c_conversion_rate_id),
  CONSTRAINT c_conversion_rate_isactive_check CHECK (isactive in ('Y','N'))
)
;

