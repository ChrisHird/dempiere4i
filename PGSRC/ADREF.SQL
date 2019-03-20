-- Table: ad_reference

-- DROP TABLE ad_reference;

CREATE TABLE ad_reference FOR SYSTEM NAME adref
(
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0) NOT NULL,
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
  validationtype                 FOR COLUMN vdntyp          CHAR(1) NOT NULL,
  vformat                                                   VARCHAR(40),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  isorderbyvalue                 FOR COLUMN isordbval       CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_reference_pkey PRIMARY KEY (ad_reference_id),
  CONSTRAINT ad_reference_isactive_check CHECK (isactive in ('Y','N'))
)
;

