-- Table: c_commissiondetail

-- DROP TABLE c_commissiondetail;

CREATE TABLE c_commissiondetail FOR SYSTEM NAME ccomdet
(
  c_commissiondetail_id          FOR COLUMN c_cdid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_commissionamt_id             FOR COLUMN c_caid          DECIMAL(10,0) NOT NULL,
  reference                                                 VARCHAR(60),
  c_orderline_id                 FOR COLUMN c_olid          DECIMAL(10,0),
  c_invoiceline_id               FOR COLUMN c_ilid          DECIMAL(10,0),
  info                                                      VARCHAR(60),
  c_currency_id                  FOR COLUMN c_cuid          DECIMAL(10,0) NOT NULL,
  actualamt                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  convertedamt                   FOR COLUMN cvtamt          DECFLOAT(16) NOT NULL DEFAULT 0,
  actualqty                                                 DECFLOAT(16) NOT NULL DEFAULT 0,
  commissionamt                  FOR COLUMN comamt          DECFLOAT(16),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_commissiondetail_pkey PRIMARY KEY (c_commissiondetail_id),
  CONSTRAINT c_commissiondetail_isactive_check CHECK (isactive in ('Y','N'))
)
;

