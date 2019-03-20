-- Table: ad_labelprinterfunction

-- DROP TABLE ad_labelprinterfunction;

CREATE TABLE ad_labelprinterfunction FOR SYSTEM NAME adlblprtf
(
  ad_labelprinterfunction_id     FOR COLUMN ad_lpfid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_labelprinter_id             FOR COLUMN ad_lpid         DECIMAL(10,0) NOT NULL,
  functionprefix                 FOR COLUMN fncpre          VARCHAR(40),
  functionsuffix                 FOR COLUMN fncsfx          VARCHAR(40),
  isxyposition                   FOR COLUMN isxypos         CHAR(1) NOT NULL DEFAULT 'N',
  xyseparator                    FOR COLUMN xys             VARCHAR(20),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_labelprinterfunction_pkey PRIMARY KEY (ad_labelprinterfunction_id),
  CONSTRAINT ad_labelprinterfunction_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_labelprinterfunction_isxyposition_check CHECK (isxyposition in ('Y','N'))
)
;

