-- Table: c_servicelevel

-- DROP TABLE c_servicelevel;

CREATE TABLE c_servicelevel FOR SYSTEM NAME cslvl
(
  c_servicelevel_id              FOR COLUMN c_srvlvlid      DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  m_product_id                   FOR COLUMN m_pid           DECIMAL(10,0) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  servicelevelprovided           FOR COLUMN srvlvlp         DECFLOAT(16) NOT NULL,
  servicelevelinvoiced           FOR COLUMN srvlvli         DECFLOAT(16) NOT NULL,
  processing                                                CHAR(1),
  processed                                                 CHAR(1) DEFAULT 'N',
  c_revenuerecognition_plan_id   FOR COLUMN c_rrpid         DECIMAL(10,0) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT c_servicelevel_pkey PRIMARY KEY (c_servicelevel_id),
  CONSTRAINT c_servicelevel_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT c_servicelevel_processed_check CHECK (processed in ('Y','N'))
)
;

