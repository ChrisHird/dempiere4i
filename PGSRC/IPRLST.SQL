-- Table: i_pricelist

-- DROP TABLE i_pricelist;

CREATE TABLE i_pricelist FOR SYSTEM NAME iprlst
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  bpartner_value                 FOR COLUMN bpval           VARCHAR(40),
  breakvalue                                                DECFLOAT(16),
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0),
  created                                                   TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  c_uom_id                                                  DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  enforcepricelimit              FOR COLUMN enfprclmt       CHAR(1),
  i_errormsg                                                VARCHAR(2000),
  i_isimported                   FOR COLUMN i_ii            CHAR(1) NOT NULL DEFAULT 'N',
  i_pricelist_id                 FOR COLUMN i_plstid        DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) DEFAULT 'Y',
  iso_code                                                  VARCHAR(3),
  issopricelist                  FOR COLUMN issoplst        CHAR(1),
  istaxincluded                  FOR COLUMN itinc           CHAR(1),
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0),
  name                                                      VARCHAR(60),
  pricelimit                                                DECFLOAT(16),
  pricelist                                                 DECFLOAT(16),
  priceprecision                 FOR COLUMN prcprec         DECFLOAT(16),
  pricestd                                                  DECFLOAT(16),
  processed                                                 CHAR(1) DEFAULT 'N',
  processing                                                CHAR(1),
  productvalue                   FOR COLUMN prodval         VARCHAR(40),
  updated                                                   TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  validfrom                                                 TIMESTAMP,
  x12de355                                                  VARCHAR(4),
  m_pricelist_id                 FOR COLUMN m_plid          DECIMAL(10,0),
  m_pricelist_version_id         FOR COLUMN m_plvid         DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_pricelist_pkey PRIMARY KEY (i_pricelist_id),
  CONSTRAINT i_pricelist_enforcepricelimit_check CHECK (enforcepricelimit in ('Y','N')),
  CONSTRAINT i_pricelist_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT i_pricelist_issopricelist_check CHECK (issopricelist in ('Y','N')),
  CONSTRAINT i_pricelist_istaxincluded_check CHECK (istaxincluded in ('Y','N')),
  CONSTRAINT i_pricelist_processed_check CHECK (processed in ('Y','N'))
)
;

