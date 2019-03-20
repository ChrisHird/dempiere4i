-- Table: c_taxpostal

-- DROP TABLE c_taxpostal;

CREATE TABLE c_taxpostal FOR SYSTEM NAME ctaxps
(
  c_taxpostal_id                 FOR COLUMN c_tpid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_tax_id                                                  DECIMAL(10,0) NOT NULL,
  postal                                                    VARCHAR(10) NOT NULL,
  postal_to                                                 VARCHAR(10),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_taxpostal_pkey PRIMARY KEY (c_taxpostal_id),
  CONSTRAINT c_taxpostal_isactive_check CHECK (isactive in ('Y','N'))
)
;

