-- Table: ad_printfont

-- DROP TABLE ad_printfont;

CREATE TABLE ad_printfont FOR SYSTEM NAME adprtfnt
(
  ad_printfont_id                FOR COLUMN ad_pfnid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  isdefault                                                 CHAR(1) NOT NULL DEFAULT 'N',
  code                                                      VARCHAR(2000) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_printfont_pkey PRIMARY KEY (ad_printfont_id),
  CONSTRAINT ad_printfont_isactive_check CHECK (isactive in ('Y','N'))
)
;

