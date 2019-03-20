-- Table: ad_printcolor

-- DROP TABLE ad_printcolor;

CREATE TABLE ad_printcolor FOR SYSTEM NAME adprtclr
(
  ad_printcolor_id               FOR COLUMN ad_pcid         DECIMAL(10,0) NOT NULL,
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
  CONSTRAINT ad_printcolor_pkey PRIMARY KEY (ad_printcolor_id),
  CONSTRAINT ad_printcolor_isactive_check CHECK (isactive in ('Y','N'))
)
;

