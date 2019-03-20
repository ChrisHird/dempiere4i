-- Table: pa_sla_measure

-- DROP TABLE pa_sla_measure;

CREATE TABLE pa_sla_measure FOR SYSTEM NAME paslam
(
  pa_sla_measure_id              FOR COLUMN pa_slamid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pa_sla_goal_id                 FOR COLUMN pa_slagid       DECIMAL(10,0) NOT NULL,
  datetr                                                    TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  measureactual                  FOR COLUMN msract          DECFLOAT(16) NOT NULL DEFAULT 0,
  description                    FOR COLUMN desc            VARCHAR(255),
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  record_id                                                 DECIMAL(10,0),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  processing                                                CHAR(1),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_sla_measure_pkey PRIMARY KEY (pa_sla_measure_id),
  CONSTRAINT pa_sla_measure_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT pa_sla_measure_processed_check CHECK (processed in ('Y','N'))
)
;

