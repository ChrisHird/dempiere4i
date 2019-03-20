-- Table: c_dunningrun

-- DROP TABLE c_dunningrun;

CREATE TABLE c_dunningrun FOR SYSTEM NAME cdunr
(
  c_dunningrun_id                FOR COLUMN c_drid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  dunningdate                    FOR COLUMN dundate          TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  c_dunninglevel_id              FOR COLUMN c_dlid          DECIMAL(10,0),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  sendit                                                    CHAR(1),
  description                    FOR COLUMN desc            VARCHAR(255),
  c_dunning_id                   FOR COLUMN c_did           DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_dunningrun_pkey PRIMARY KEY (c_dunningrun_id),
  CONSTRAINT c_dunningrun_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_dunningrun_processed_check CHECK (processed in ('Y','N'))
)
;

