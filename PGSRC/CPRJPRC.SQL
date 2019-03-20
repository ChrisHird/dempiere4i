-- Table: c_projectprocessor

-- DROP TABLE c_projectprocessor;

CREATE TABLE c_projectprocessor FOR SYSTEM NAME cprjprc
(
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_projectprocessor_id          FOR COLUMN c_prjprcid      DECIMAL(10,0) NOT NULL,
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  datenextrun                    FOR COLUMN datnxtr         TIMESTAMP,
  description                    FOR COLUMN desc            VARCHAR(255) DEFAULT NULL,
  frequency                                                 DECIMAL(10,0) NOT NULL DEFAULT 1,
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL,
  inactivityalertdays            FOR COLUMN ialrtd          DECIMAL(10,0) NOT NULL DEFAULT 0,
  keeplogdays                    FOR COLUMN kld             DECIMAL(10,0) NOT NULL DEFAULT 7,
  name                                                      VARCHAR(60) NOT NULL,
  overduealertdays               FOR COLUMN odaltday        DECIMAL(10,0) NOT NULL DEFAULT 0,
  overdueassigndays              FOR COLUMN odasnday        DECIMAL(10,0) NOT NULL DEFAULT 0,
  processing                                                CHAR(1) DEFAULT NULL,
  reminddays                                                DECIMAL(10,0) NOT NULL DEFAULT 0,
  supervisor_id                  FOR COLUMN supid           DECIMAL(10,0) NOT NULL,
  c_projecttype_id               FOR COLUMN c_prjtid        DECIMAL(10,0),
  c_projecttaskcategory_id       FOR COLUMN c_prjtcid       DECIMAL(10,0),
  CONSTRAINT c_projectprocessor_key PRIMARY KEY (c_projectprocessor_id),
  CONSTRAINT c_projectprocessor_isactive_check CHECK (isactive in ('Y','N'))
)
;

