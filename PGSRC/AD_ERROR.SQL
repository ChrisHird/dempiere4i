-- Table: ad_error

-- DROP TABLE ad_error;

CREATE TABLE ad_error
(
  ad_error_id                    FOR COLUMN ad_errid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  code                                                      VARCHAR(2000),
  ad_language                    FOR COLUMN ad_lng          VARCHAR(6),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_error_pkey PRIMARY KEY (ad_error_id),
  CONSTRAINT ad_error_isactive_check CHECK (isactive in ('Y','N'))
)
;

