-- Table: ad_alertrule

-- DROP TABLE ad_alertrule;

CREATE TABLE ad_alertrule FOR SYSTEM NAME adalrtr
(
  ad_alertrule_id                FOR COLUMN ad_arid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  ad_alert_id                    FOR COLUMN ad_aid          DECIMAL(10,0) NOT NULL,
  selectclause                   FOR COLUMN sltclse         VARCHAR(2000) NOT NULL,
  fromclause                                                VARCHAR(2000) NOT NULL,
  whereclause                    FOR COLUMN whrclse         VARCHAR(2000),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  preprocessing                  FOR COLUMN preprc          VARCHAR(2000),
  postprocessing                 FOR COLUMN pstprc          VARCHAR(2000),
  isvalid                                                   CHAR(1) NOT NULL DEFAULT 'Y',
  errormsg                                                  VARCHAR(2000),
  otherclause                    FOR COLUMN othc            VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_alertrule_pkey PRIMARY KEY (ad_alertrule_id),
  CONSTRAINT ad_alertrule_isactive_check CHECK (isactive in ('Y','N'))
)
;

