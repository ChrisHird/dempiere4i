-- Table: ad_impformat_row

-- DROP TABLE ad_impformat_row;

CREATE TABLE ad_impformat_row FOR SYSTEM NAME adimpfmtr
(
  ad_impformat_row_id            FOR COLUMN ad_ifrid        DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_impformat_id                FOR COLUMN ad_ifid         DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0) NOT NULL,
  startno                                                   DECIMAL(10,0),
  endno                                                     DECIMAL(10,0),
  datatype                                                  CHAR(1) NOT NULL,
  dataformat                                                VARCHAR(20),
  decimalpoint                   FOR COLUMN decpt           CHAR(1) NOT NULL,
  divideby100                    FOR COLUMN divby100        CHAR(1) NOT NULL DEFAULT 'N',
  constantvalue                  FOR COLUMN cnstval         VARCHAR(60),
  callout                                                   VARCHAR(60),
  script                                                    VARCHAR(2000),
  defaultvalue                   FOR COLUMN dftval          VARCHAR(60) DEFAULT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_impformat_row_pkey PRIMARY KEY (ad_impformat_row_id),
  CONSTRAINT ad_impformat_row_divideby100_check CHECK (divideby100 in ('Y','N')),
  CONSTRAINT ad_impformat_row_isactive_check CHECK (isactive in ('Y','N'))
)
;

