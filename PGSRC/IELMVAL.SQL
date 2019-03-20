-- Table: i_elementvalue

-- DROP TABLE i_elementvalue;

CREATE TABLE i_elementvalue FOR SYSTEM NAME ielmval
(
  i_elementvalue_id              FOR COLUMN i_evid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) DEFAULT 'Y',
  createdby                                                 DECIMAL(10,0),
  created                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  updated                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  i_isimported                   FOR COLUMN i_ii            CHAR(1) NOT NULL DEFAULT 'N',
  i_errormsg                                                VARCHAR(2000),
  c_element_id                   FOR COLUMN c_eid           DECIMAL(10,0),
  elementname                    FOR COLUMN elemnam         VARCHAR(60),
  c_elementvalue_id              FOR COLUMN c_evid          DECIMAL(10,0),
  value                                                     VARCHAR(40),
  name                                                      VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  accounttype                    FOR COLUMN accttyp         CHAR(1),
  accountsign                    FOR COLUMN actsgn          CHAR(1),
  isdoccontrolled                FOR COLUMN isdocctl        CHAR(1) DEFAULT 'N',
  issummary                                                 CHAR(1) DEFAULT 'N',
  parentvalue                    FOR COLUMN pval            VARCHAR(40),
  parentelementvalue_id          FOR COLUMN pelemvid        DECIMAL(10,0),
  postactual                                                CHAR(1) DEFAULT 'Y',
  postbudget                                                CHAR(1) DEFAULT 'Y',
  poststatistical                FOR COLUMN poststat        CHAR(1) DEFAULT 'Y',
  postencumbrance                FOR COLUMN postence        CHAR(1) DEFAULT 'Y',
  default_account                FOR COLUMN dftact          VARCHAR(30),
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) DEFAULT 'N',
  chargename                                                VARCHAR(60) DEFAULT NULL,
  c_charge_id                    FOR COLUMN c_cgid          DECIMAL(10,0),
  c_taxcategory_id               FOR COLUMN c_tcid          DECIMAL(10,0),
  taxcategoryname                FOR COLUMN taxcatnm        VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_elementvalue_pkey PRIMARY KEY (i_elementvalue_id),
  CONSTRAINT i_elementvalue_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT i_elementvalue_isdoccontrolled_check CHECK (isdoccontrolled in ('Y','N')),
  CONSTRAINT i_elementvalue_postactual_check CHECK (postactual in ('Y','N')),
  CONSTRAINT i_elementvalue_postbudget_check CHECK (postbudget in ('Y','N')),
  CONSTRAINT i_elementvalue_postencumbrance_check CHECK (postencumbrance in ('Y','N')),
  CONSTRAINT i_elementvalue_poststatistical_check CHECK (poststatistical in ('Y','N')),
  CONSTRAINT i_elementvalue_processed_check CHECK (processed in ('Y','N'))
)
;

