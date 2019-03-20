-- Table: ad_printpaper

-- DROP TABLE ad_printpaper;

CREATE TABLE ad_printpaper FOR SYSTEM NAME adprtp
(
  ad_printpaper_id               FOR COLUMN ad_prtpid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  islandscape                    FOR COLUMN islandscp       CHAR(1) NOT NULL DEFAULT 'Y',
  code                                                      VARCHAR(2000) NOT NULL,
  margintop                                                 DECIMAL(10,0) NOT NULL DEFAULT 36,
  marginleft                                                DECIMAL(10,0) NOT NULL DEFAULT 36,
  marginright                    FOR COLUMN mrginr          DECIMAL(10,0) NOT NULL DEFAULT 36,
  marginbottom                   FOR COLUMN mrginb          DECIMAL(10,0) NOT NULL DEFAULT 36,
  processing                                                CHAR(1),
  sizex                                                     DECFLOAT(16),
  sizey                                                     DECFLOAT(16),
  dimensionunits                 FOR COLUMN dimunit         CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printpaper_pkey PRIMARY KEY (ad_printpaper_id),
  CONSTRAINT ad_printpaper_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_printpaper_islandscape_check CHECK (islandscape in ('Y','N'))
)
;

