-- Table: c_bpartner_product

-- DROP TABLE c_bpartner_product;

CREATE TABLE c_bpartner_product FOR SYSTEM NAME cbpprd
(
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  shelflifeminpct                FOR COLUMN shlminpc        DECIMAL(10,0) NOT NULL,
  shelflifemindays               FOR COLUMN shlmind         DECIMAL(10,0) NOT NULL,
  qualityrating                  FOR COLUMN qrating         DECFLOAT(16),
  vendorproductno                FOR COLUMN vprodnum        VARCHAR(30),
  vendorcategory                 FOR COLUMN vndcat          VARCHAR(30),
  manufacturer                   FOR COLUMN manuf           VARCHAR(30),
  ismanufacturer                 FOR COLUMN ismanfr         CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_bpartner_product_pkey PRIMARY KEY (c_bpartner_id, m_product_id),
  CONSTRAINT c_bpartner_product_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_bpartner_product_ismanufacturer_check CHECK (ismanufacturer in ('Y','N'))
)
;

