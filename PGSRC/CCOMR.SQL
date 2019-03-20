-- Table: c_commissionrun

-- DROP TABLE c_commissionrun;

CREATE TABLE c_commissionrun FOR SYSTEM NAME ccomr
(
  c_commissionrun_id             FOR COLUMN c_crid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  documentno                                                VARCHAR(30) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  c_commission_id                FOR COLUMN c_comid         DECIMAL(10,0),
  startdate                                                 TIMESTAMP,
  grandtotal                                                DECFLOAT(16) NOT NULL DEFAULT 0,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  c_doctype_id                   FOR COLUMN c_dtid          DECIMAL(10,0) NOT NULL,
  isapproved                                                CHAR(1) NOT NULL DEFAULT 'N',
  docstatus                                                 VARCHAR(2) NOT NULL DEFAULT 'DR',
  docaction                                                 CHAR(2) NOT NULL DEFAULT 'CO',
  c_commissiongroup_id           FOR COLUMN c_comgid        DECIMAL(10,0),
  datedoc                                                   TIMESTAMP,
  enddate                                                   TIMESTAMP,
  isrecalculate                  FOR COLUMN isrecalc        CHAR(1) DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_commissionrun_pkey PRIMARY KEY (c_commissionrun_id),
  CONSTRAINT c_commissionrun_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_commissionrun_isapproved_check CHECK (isapproved in ('Y','N')),
  CONSTRAINT c_commissionrun_isrecalculate_check CHECK (isrecalculate in ('Y','N')),
  CONSTRAINT c_commissionrun_processed_check CHECK (processed in ('Y','N'))
)
;

