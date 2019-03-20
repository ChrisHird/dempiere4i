-- Table: pa_measurecalc

-- DROP TABLE pa_measurecalc;

CREATE TABLE pa_measurecalc FOR SYSTEM NAME pamclc
(
  pa_measurecalc_id              FOR COLUMN pa_mcid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  selectclause                   FOR COLUMN sltclse         VARCHAR(2000) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000) NOT NULL,
  datecolumn                                                VARCHAR(60) NOT NULL,
  orgcolumn                                                 VARCHAR(60),
  bpartnercolumn                 FOR COLUMN bpcol           VARCHAR(60),
  productcolumn                  FOR COLUMN prodcol         VARCHAR(60),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  keycolumn                                                 VARCHAR(60) NOT NULL,
  entitytype                                                VARCHAR(40) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_measurecalc_pkey PRIMARY KEY (pa_measurecalc_id),
  CONSTRAINT pa_measurecalc_isactive_check CHECK (isactive in ('Y','N'))
)
;

