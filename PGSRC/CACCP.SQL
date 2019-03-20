-- Table: c_acctprocessor

-- DROP TABLE c_acctprocessor;

CREATE TABLE c_acctprocessor FOR SYSTEM NAME caccp
(
  c_acctprocessor_id             FOR COLUMN c_apid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL,
  frequency                                                 DECIMAL(10,0) NOT NULL,
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  datenextrun                    FOR COLUMN datnxtr         TIMESTAMP,
  supervisor_id                  FOR COLUMN supid           DECIMAL(10,0) NOT NULL,
  keeplogdays                    FOR COLUMN kld             DECIMAL(10,0) NOT NULL,
  processing                                                CHAR(1),
  c_acctschema_id                FOR COLUMN c_asid          DECIMAL(10,0),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_acctprocessor_pkey PRIMARY KEY (c_acctprocessor_id)
)
  ;
