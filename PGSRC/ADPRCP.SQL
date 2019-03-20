-- Table: ad_process_para

-- DROP TABLE ad_process_para;

CREATE TABLE ad_process_para FOR SYSTEM NAME adprcp
(
  ad_process_para_id             FOR COLUMN ad_ppid         DECIMAL(10,0) NOT NULL,
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
  ad_process_id                  FOR COLUMN ad_pid          DECIMAL(10,0) NOT NULL,
  seqno                                                     DECIMAL(10,0) NOT NULL,
  ad_reference_id                FOR COLUMN ad_rid          DECIMAL(10,0) NOT NULL,
  ad_reference_value_id          FOR COLUMN ad_rvid         DECIMAL(10,0),
  ad_val_rule_id                 FOR COLUMN ad_vrid         DECIMAL(10,0),
  columnname                                                VARCHAR(30) NOT NULL,
  iscentrallymaintained          FOR COLUMN iscntmnt        CHAR(1) NOT NULL DEFAULT 'Y',
  fieldlength                    FOR COLUMN fldlen          DECIMAL(10,0) NOT NULL,
  ismandatory                    FOR COLUMN ismand          CHAR(1) NOT NULL DEFAULT 'N',
  isrange                                                   CHAR(1) NOT NULL DEFAULT 'N',
  defaultvalue                   FOR COLUMN dftval          VARCHAR(2000),
  defaultvalue2                  FOR COLUMN dftval2         VARCHAR(2000),
  vformat                                                   VARCHAR(20),
  valuemin                                                  VARCHAR(20),
  valuemax                                                  VARCHAR(20),
  ad_element_id                  FOR COLUMN ad_eid          DECIMAL(10,0),
  entitytype                                                VARCHAR(40) NOT NULL DEFAULT 'D',
  readonlylogic                  FOR COLUMN rol             VARCHAR(2000),
  displaylogic                   FOR COLUMN dsplgc          VARCHAR(2000),
  isinfoonly                                                CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_process_para_pkey PRIMARY KEY (ad_process_para_id),
  CONSTRAINT ad_process_para_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT ad_process_para_iscentrallymaintained_check CHECK (iscentrallymaintained in ('Y','N')),
  CONSTRAINT ad_process_para_isinfoonly_check CHECK (isinfoonly in ('Y','N')),
  CONSTRAINT ad_process_para_ismandatory_check CHECK (ismandatory in ('Y','N')),
  CONSTRAINT ad_process_para_isrange_check CHECK (isrange in ('Y','N'))
)
;

