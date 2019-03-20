-- Table: ad_table_scriptvalidator

-- DROP TABLE ad_table_scriptvalidator;

CREATE TABLE ad_table_scriptvalidator FOR SYSTEM NAME adtblsval
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  ad_rule_id                                                DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0) NOT NULL,
  ad_table_scriptvalidator_id    FOR COLUMN ad_tsvalid      DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  eventmodelvalidator            FOR COLUMN evtmval         VARCHAR(4) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  seqno                                                     DECIMAL(10,0) NOT NULL DEFAULT 0,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_table_scriptvalidator_pkey PRIMARY KEY (ad_table_scriptvalidator_id),
  CONSTRAINT ad_table_scriptvalidator_isactive_check CHECK (isactive in ('Y','N'))
)
;

