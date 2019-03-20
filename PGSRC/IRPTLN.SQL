-- Table: i_reportline

-- DROP TABLE i_reportline;

CREATE TABLE i_reportline FOR SYSTEM NAME irptln
(
  i_reportline_id                FOR COLUMN i_rlid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0),
  ad_org_id                                                 DECIMAL(10,0),
  isactive                                                  CHAR(1) DEFAULT 'Y',
  created                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0),
  updated                                                   TIMESTAMP WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0),
  i_isimported                   FOR COLUMN i_ii            CHAR(1) NOT NULL DEFAULT 'N',
  i_errormsg                                                VARCHAR(2000),
  reportlinesetname              FOR COLUMN rptlsnam        VARCHAR(60),
  pa_reportlineset_id            FOR COLUMN pa_rlsid        DECIMAL(10,0),
  name                                                      VARCHAR(60),
  pa_reportline_id               FOR COLUMN pa_rlid         DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  seqno                                                     DECIMAL(10,0),
  issummary                                                 CHAR(1) DEFAULT 'N',
  isprinted                                                 CHAR(1) DEFAULT 'Y',
  linetype                                                  CHAR(1),
  calculationtype                FOR COLUMN calctyp         CHAR(1),
  amounttype                                                VARCHAR(2),
  postingtype                    FOR COLUMN posttyp         CHAR(1),
  pa_reportsource_id             FOR COLUMN pa_rsid         DECIMAL(10,0),
  c_elementvalue_id              FOR COLUMN c_evid          DECIMAL(10,0),
  elementvalue                   FOR COLUMN elmval          VARCHAR(40),
  processing                                                CHAR(1),
  processed                                                 CHAR(1) DEFAULT 'N',
  paamounttype                   FOR COLUMN pamnttyp        CHAR(1),
  paperiodtype                   FOR COLUMN papdtyp         CHAR(1),
  reportlinestyle                FOR COLUMN rptlnstl        CHAR(1),
  tablevel                                                  DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT i_reportline_pkey PRIMARY KEY (i_reportline_id),
  CONSTRAINT i_reportline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT i_reportline_isprinted_check CHECK (isprinted in ('Y','N')),
  CONSTRAINT i_reportline_processed_check CHECK (processed in ('Y','N'))
)
;

