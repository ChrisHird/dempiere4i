-- Table: imp_processor

-- DROP TABLE imp_processor;

CREATE TABLE imp_processor FOR SYSTEM NAME impprc
(
  imp_processor_id               FOR COLUMN imp_pid         DECIMAL(10,0) NOT NULL,
  imp_processor_type_id          FOR COLUMN imp_ptid        DECIMAL(10,0) NOT NULL,
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
  frequencytype                  FOR COLUMN freqtyp         CHAR(1) NOT NULL,
  frequency                                                 DECIMAL(10,0) NOT NULL,
  datelastrun                    FOR COLUMN datlstr         TIMESTAMP,
  datenextrun                    FOR COLUMN datnxtr         TIMESTAMP,
  keeplogdays                    FOR COLUMN kld             DECIMAL(10,0) NOT NULL DEFAULT 7,
  processing                                                CHAR(1),
  host                                                      VARCHAR(255),
  port                                                      DECIMAL(10,0),
  account                                                   VARCHAR(255),
  passwordinfo                   FOR COLUMN pwdinfo         VARCHAR(255),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT imp_processor_pkey PRIMARY KEY (imp_processor_id),
  CONSTRAINT imp_processor_isactive_check CHECK (isactive in ('Y','N'))
)
;

