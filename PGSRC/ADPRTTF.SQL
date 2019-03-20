-- Table: ad_printtableformat

-- DROP TABLE ad_printtableformat;

CREATE TABLE ad_printtableformat FOR SYSTEM NAME adprttf
(
  ad_printtableformat_id         FOR COLUMN ad_ptfid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  hdr_printfont_id               FOR COLUMN hdr_pfntid      DECIMAL(10,0),
  hdrtextfg_printcolor_id        FOR COLUMN htfgpcid        DECIMAL(10,0),
  hdrtextbg_printcolor_id        FOR COLUMN htbgpcid        DECIMAL(10,0),
  hdrline_printcolor_id          FOR COLUMN hlpcid          DECIMAL(10,0),
  funct_printfont_id             FOR COLUMN fncpfid         DECIMAL(10,0),
  functbg_printcolor_id          FOR COLUMN fncbgpcid       DECIMAL(10,0),
  functfg_printcolor_id          FOR COLUMN fncfgpcid       DECIMAL(10,0),
  line_printcolor_id             FOR COLUMN lpcid           DECIMAL(10,0),
  description                    FOR COLUMN desc            VARCHAR(255),
  ispaintboundarylines           FOR COLUMN ispntbl         CHAR(1) NOT NULL DEFAULT 'N',
  ispainthlines                  FOR COLUMN ispnthl         CHAR(1) NOT NULL DEFAULT 'N',
  ispaintvlines                  FOR COLUMN ispntvl         CHAR(1) NOT NULL DEFAULT 'N',
  isprintfunctionsymbols         FOR COLUMN isprtfsym       CHAR(1) NOT NULL DEFAULT 'Y',
  name                                                      VARCHAR(60) NOT NULL,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  imageurl                                                  VARCHAR(120),
  headerleft                                                VARCHAR(255),
  headercenter                   FOR COLUMN hdrctr          VARCHAR(255),
  headerright                    FOR COLUMN hdrrgt          VARCHAR(255),
  footerleft                                                VARCHAR(255),
  footercenter                   FOR COLUMN ftrctr          VARCHAR(255),
  footerright                    FOR COLUMN ftrrgt          VARCHAR(255),
  imageisattached                FOR COLUMN imgisatc        CHAR(1) DEFAULT 'N',
  hdrstroke                                                 DECFLOAT(16),
  linestroke                                                DECFLOAT(16),
  hdrstroketype                  FOR COLUMN hstyp           CHAR(1),
  linestroketype                 FOR COLUMN lstyp           CHAR(1),
  ispaintheaderlines             FOR COLUMN ispnthdrl       CHAR(1) NOT NULL DEFAULT 'Y',
  ad_image_id                    FOR COLUMN ad_imgid        DECIMAL(10,0),
  ismultilineheader              FOR COLUMN ismlhdr         CHAR(1) NOT NULL DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printtableformat_pkey PRIMARY KEY (ad_printtableformat_id),
  CONSTRAINT ad_printtableformat_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_printtableformat_ismultilineheader_check CHECK (ismultilineheader in ('Y','N'))
)
;

