-- Table: ad_printformatitem

-- DROP TABLE ad_printformatitem;

CREATE TABLE ad_printformatitem FOR SYSTEM NAME adprtfi
(
  ad_printformatitem_id          FOR COLUMN ad_pfiid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  printname                                                 VARCHAR(2000),
  isprinted                                                 CHAR(1) NOT NULL DEFAULT 'Y',
  printareatype                  FOR COLUMN prtatyp         CHAR(1) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  printformattype                FOR COLUMN prtfmttyp       CHAR(1) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  ad_printformatchild_id         FOR COLUMN ad_pfcid        DECIMAL(10,0),
  isrelativeposition             FOR COLUMN isrelpos        CHAR(1) NOT NULL DEFAULT 'Y',
  isnextline                                                CHAR(1) NOT NULL DEFAULT 'Y',
  xspace                                                    DECIMAL(10,0) NOT NULL,
  yspace                                                    DECIMAL(10,0) NOT NULL,
  xposition                                                 DECIMAL(10,0) NOT NULL,
  yposition                                                 DECIMAL(10,0) NOT NULL,
  maxwidth                                                  DECIMAL(10,0) NOT NULL,
  isheightoneline                FOR COLUMN ishgtol         CHAR(1) NOT NULL DEFAULT 'Y',
  maxheight                                                 DECIMAL(10,0) NOT NULL,
  fieldalignmenttype             FOR COLUMN fldatyp         CHAR(1) NOT NULL,
  linealignmenttype              FOR COLUMN lnatyp          CHAR(1) NOT NULL,
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0),
  ad_printfont_id                FOR COLUMN ad_pfnid        DECIMAL(10,0),
  isorderby                                                 CHAR(1) NOT NULL DEFAULT 'N',
  sortno                                                    DECIMAL(10,0) NOT NULL,
  isgroupby                                                 CHAR(1) NOT NULL DEFAULT 'N',
  ispagebreak                    FOR COLUMN ispgbrk         CHAR(1) NOT NULL DEFAULT 'N',
  issummarized                   FOR COLUMN issumd          CHAR(1) NOT NULL DEFAULT 'N',
  imageisattached                FOR COLUMN imgisatc        CHAR(1) NOT NULL DEFAULT 'N',
  imageurl                                                  VARCHAR(120),
  isaveraged                                                CHAR(1) NOT NULL DEFAULT 'N',
  iscounted                                                 CHAR(1) NOT NULL DEFAULT 'N',
  issetnlposition                FOR COLUMN issetnlpos      CHAR(1) NOT NULL DEFAULT 'N',
  issuppressnull                 FOR COLUMN issupnull       CHAR(1) NOT NULL DEFAULT 'N',
  belowcolumn                    FOR COLUMN bcol            DECIMAL(10,0),
  ad_printgraph_id               FOR COLUMN ad_pgid         DECIMAL(10,0),
  isfixedwidth                   FOR COLUMN isfxdw          CHAR(1) NOT NULL DEFAULT 'N',
  isnextpage                                                CHAR(1) NOT NULL DEFAULT 'N',
  printnamesuffix                FOR COLUMN prtnsfx         VARCHAR(60),
  ismincalc                                                 CHAR(1) NOT NULL DEFAULT 'N',
  ismaxcalc                                                 CHAR(1) NOT NULL DEFAULT 'N',
  isrunningtotal                 FOR COLUMN isrtotal        CHAR(1) NOT NULL DEFAULT 'N',
  runningtotallines              FOR COLUMN runtln          DECIMAL(10,0),
  isvariancecalc                 FOR COLUMN isvarcalc       CHAR(1) NOT NULL DEFAULT 'N',
  isdeviationcalc                FOR COLUMN isdevclac       CHAR(1) NOT NULL DEFAULT 'N',
  isfilledrectangle              FOR COLUMN isfrect         CHAR(1) NOT NULL DEFAULT 'N',
  linewidth                                                 DECIMAL(10,0),
  arcdiameter                    FOR COLUMN arcdia          DECIMAL(10,0),
  shapetype                                                 CHAR(1),
  iscentrallymaintained          FOR COLUMN iscntmnt        CHAR(1) NOT NULL DEFAULT 'Y',
  isimagefield                   FOR COLUMN isimgfld        CHAR(1) NOT NULL DEFAULT 'N',
  barcodetype                    FOR COLUMN bcdetyp         character(3),
  formatpattern                  FOR COLUMN fmtpatn         VARCHAR(22),
  issuppressrepeats              FOR COLUMN issuprpt        CHAR(1) NOT NULL DEFAULT 'N',
  isdesc                                                    CHAR(1) NOT NULL DEFAULT 'N',
  isprintbarcodetext             FOR COLUMN isprtbctxt      CHAR(1) NOT NULL DEFAULT 'Y',
  displaylogic                   FOR COLUMN dsplgc          VARCHAR(2000) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printformatitem_pkey PRIMARY KEY (ad_printformatitem_id),
  CONSTRAINT ad_printformatitem_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_printformatitem_isdesc_check CHECK (isdesc in ('Y','N')),
  CONSTRAINT ad_printformatitem_isgroupby_check CHECK (isgroupby in ('Y','N')),
  CONSTRAINT ad_printformatitem_isheightoneline_check CHECK (isheightoneline in ('Y','N')),
  CONSTRAINT ad_printformatitem_isnextline_check CHECK (isnextline in ('Y','N')),
  CONSTRAINT ad_printformatitem_isorderby_check CHECK (isorderby in ('Y','N')),
  CONSTRAINT ad_printformatitem_ispagebreak_check CHECK (ispagebreak in ('Y','N')),
  CONSTRAINT ad_printformatitem_isprintbarcodetext_check CHECK (isprintbarcodetext in ('Y','N')),
  CONSTRAINT ad_printformatitem_isprinted_check CHECK (isprinted in ('Y','N')),
  CONSTRAINT ad_printformatitem_isrelativeposition_check CHECK (isrelativeposition in ('Y','N')),
  CONSTRAINT ad_printformatitem_issummarized_check CHECK (issummarized in ('Y','N')),
  CONSTRAINT ad_printformatitem_issuppressrepeats_check CHECK (issuppressrepeats in ('Y','N'))
)
;

