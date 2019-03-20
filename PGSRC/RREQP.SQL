-- Table: r_requestprocessor

-- DROP TABLE r_requestprocessor;

CREATE TABLE r_requestprocessor FOR SYSTEM NAME rreqp
(
  r_requestprocessor_id          FOR COLUMN r_rpid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  frequency                                                 DECIMAL(10,0) NOT NULL,
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL,
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  datenextrun                    FOR COLUMN datnxtr         TIMESTAMP,
  processing                                                CHAR(1),
  overduealertdays               FOR COLUMN odaltday        DECIMAL(10,0) NOT NULL,
  overdueassigndays              FOR COLUMN odasnday        DECIMAL(10,0) NOT NULL,
  supervisor_id                  FOR COLUMN supid           DECIMAL(10,0) NOT NULL,
  keeplogdays                    FOR COLUMN kld             DECIMAL(10,0) NOT NULL,
  reminddays                                                DECIMAL(10,0) NOT NULL DEFAULT 7,
  inactivityalertdays            FOR COLUMN ialrtd          DECIMAL(10,0) NOT NULL DEFAULT 0,
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT r_requestprocessor_pkey PRIMARY KEY (r_requestprocessor_id),
  CONSTRAINT r_requestprocessor_isactive_check CHECK (isactive in ('Y','N'))
)
;

