-- Table: c_servicelevelline

-- DROP TABLE c_servicelevelline;

CREATE TABLE c_servicelevelline FOR SYSTEM NAME cslvlln
(
  c_servicelevelline_id          FOR COLUMN c_sllid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  c_servicelevel_id              FOR COLUMN c_srvlvlid      DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  servicelevelprovided           FOR COLUMN srvlvlp         DECFLOAT(16) NOT NULL,
  servicedate                    FOR COLUMN srvdat           TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  processed                                                 CHAR(1) DEFAULT 'N',
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_servicelevelline_pkey PRIMARY KEY (c_servicelevelline_id),
  CONSTRAINT c_servicelevelline_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_servicelevelline_processed_check CHECK (processed in ('Y','N'))
)
;

