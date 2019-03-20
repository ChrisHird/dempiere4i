-- Table: exp_format

-- DROP TABLE exp_format;

CREATE TABLE exp_format
(
  exp_format_id                  FOR COLUMN exp_fid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  value                                                     VARCHAR(40) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  help                                                      VARCHAR(2000),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(255),
  testimportmodel                FOR COLUMN tstimpmdl       CHAR(1),
  version                                                   VARCHAR(40) NOT NULL,
  processing                                                CHAR(1),
  testexportmodel                FOR COLUMN tstexpmdl       CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT exp_format_pkey PRIMARY KEY (exp_format_id),
  CONSTRAINT exp_format_isactive_check CHECK (isactive in ('Y','N'))
)
;

