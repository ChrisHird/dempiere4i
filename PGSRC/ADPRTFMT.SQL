-- Table: ad_printformat

-- DROP TABLE ad_printformat;

CREATE TABLE ad_printformat FOR SYSTEM NAME adprtfmt
(
  ad_printformat_id              FOR COLUMN ad_pfmtid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  istablebased                   FOR COLUMN istblbased      CHAR(1) NOT NULL DEFAULT 'Y',
  isform                                                    CHAR(1) NOT NULL DEFAULT 'N',
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  ad_printpaper_id               FOR COLUMN ad_prtpid       DECIMAL(10,0) NOT NULL,
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0) NOT NULL,
  ad_printfont_id                FOR COLUMN ad_pfnid        DECIMAL(10,0) NOT NULL,
  isstandardheaderfooter         FOR COLUMN isstdhdrft      CHAR(1) NOT NULL DEFAULT 'Y',
  headermargin                   FOR COLUMN hdrmg           DECIMAL(10,0) NOT NULL,
  footermargin                   FOR COLUMN ftmg            DECIMAL(10,0) NOT NULL,
  createcopy                                                CHAR(1),
  ad_reportview_id               FOR COLUMN ad_rptvid       DECIMAL(10,0),
  ad_printtableformat_id         FOR COLUMN ad_ptfid        DECIMAL(10,0),
  printername                    FOR COLUMN prtnam          VARCHAR(40),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  jasperprocess_id               FOR COLUMN jaspid          DECIMAL(10,0),
  classname                                                 VARCHAR(240),
  args                                                      VARCHAR(480),
  issummary                                                 CHAR(1) DEFAULT 'N',
  isprintparameters              FOR COLUMN isprtparm       CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printformat_pkey PRIMARY KEY (ad_printformat_id),
  CONSTRAINT ad_printformat_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_printformat_isform_check CHECK (isform in ('Y','N')),
  CONSTRAINT ad_printformat_isprintparameters_check CHECK (isprintparameters in ('Y','N')),
  CONSTRAINT ad_printformat_isstandardheaderfooter_check CHECK (isstandardheaderfooter in ('Y','N')),
  CONSTRAINT ad_printformat_issummary_check CHECK (issummary in ('Y','N')),
  CONSTRAINT ad_printformat_istablebased_check CHECK (istablebased in ('Y','N'))
)
;

