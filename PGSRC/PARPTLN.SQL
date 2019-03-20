-- Table: pa_reportline

-- DROP TABLE pa_reportline;

CREATE TABLE pa_reportline FOR SYSTEM NAME parptln
(
  pa_reportline_id               FOR COLUMN pa_rlid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pa_reportlineset_id            FOR COLUMN pa_rlsid        DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isprinted                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  parent_id                                                 DECIMAL(10,0),
  issummary                                                 CHAR(1) NOT NULL DEFAULT 'N',
  linetype                                                  CHAR(1) NOT NULL,
  calculationtype                FOR COLUMN calctyp         CHAR(1),
  oper_1_id                                                 DECIMAL(10,0),
  oper_2_id                                                 DECIMAL(10,0),
  postingtype                    FOR COLUMN posttyp         CHAR(1),
  gl_budget_id                   FOR COLUMN gl_bid          DECIMAL(10,0),
  amounttype                                                CHAR(2),
  paamounttype                   FOR COLUMN pamnttyp        CHAR(1),
  paperiodtype                   FOR COLUMN papdtyp         CHAR(1),
  reportlinestyle                FOR COLUMN rptlnstl        CHAR(1),
  tablevel                                                  DECIMAL(10,0),
  fixedpercentage                FOR COLUMN fxdpc           DECFLOAT(16),
  underlinestroketype            FOR COLUMN ulsttyp         VARCHAR(5) DEFAULT NULL,
  overlinestroketype             FOR COLUMN olnestkt        VARCHAR(5) DEFAULT NULL,
  isshowoppositesign             FOR COLUMN issopsign       CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_reportline_pkey PRIMARY KEY (pa_reportline_id),
  CONSTRAINT pa_reportline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pa_reportline_isprinted_check CHECK (isprinted in ('Y','N')),
  CONSTRAINT pa_reportline_isshowoppositesign_check CHECK (isshowoppositesign in ('Y','N'))
)
;

