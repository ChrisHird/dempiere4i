-- Table: c_poskeylayout

-- DROP TABLE c_poskeylayout;

CREATE TABLE c_poskeylayout FOR SYSTEM NAME cposkl
(
  c_poskeylayout_id              FOR COLUMN c_posklid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  columns                                                   DECIMAL(10,0),
  poskeylayouttype               FOR COLUMN poskltyp        CHAR(1),
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0),
  ad_printfont_id                FOR COLUMN ad_pfnid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_poskeylayout_pkey PRIMARY KEY (c_poskeylayout_id),
  CONSTRAINT c_poskeylayout_isactive_check CHECK (isactive in ('Y','N'))
)
;

