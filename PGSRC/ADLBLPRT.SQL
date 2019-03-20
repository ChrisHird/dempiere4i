-- Table: ad_labelprinter

-- DROP TABLE ad_labelprinter;

CREATE TABLE ad_labelprinter FOR SYSTEM NAME adlblprt
(
  ad_labelprinter_id             FOR COLUMN ad_lpid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_labelprinter_pkey PRIMARY KEY (ad_labelprinter_id),
  CONSTRAINT ad_labelprinter_isactive_check CHECK (isactive in ('Y','N'))
)
;

