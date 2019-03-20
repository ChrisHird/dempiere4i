-- Table: ad_printlabelline

-- DROP TABLE ad_printlabelline;

CREATE TABLE ad_printlabelline FOR SYSTEM NAME adprtll
(
  ad_printlabelline_id           FOR COLUMN ad_pllid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_printlabel_id               FOR COLUMN ad_plid         DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  labelformattype                FOR COLUMN lblfmttyp       CHAR(1) NOT NULL,
  printname                                                 VARCHAR(60),
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  ad_labelprinterfunction_id     FOR COLUMN ad_lpfid        DECIMAL(10,0) NOT NULL,
  xposition                                                 DECIMAL(10,0) NOT NULL,
  yposition                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printlabelline_pkey PRIMARY KEY (ad_printlabelline_id),
  CONSTRAINT ad_printlabelline_isactive_check CHECK (isactive in ('Y','N'))
)
;

