-- Table: ad_printlabel

-- DROP TABLE ad_printlabel;

CREATE TABLE ad_printlabel FOR SYSTEM NAME adprtlbl
(
  ad_printlabel_id               FOR COLUMN ad_plid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  printername                    FOR COLUMN prtnam          VARCHAR(40),
  islandscape                    FOR COLUMN islandscp       CHAR(1) NOT NULL DEFAULT 'Y',
  labelheight                    FOR COLUMN lblhgt          DECIMAL(10,0) NOT NULL,
  labelwidth                                                DECIMAL(10,0) NOT NULL,
  ad_labelprinter_id             FOR COLUMN ad_lpid         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printlabel_pkey PRIMARY KEY (ad_printlabel_id),
  CONSTRAINT ad_printlabel_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_printlabel_islandscape_check CHECK (islandscape in ('Y','N'))
)
;

