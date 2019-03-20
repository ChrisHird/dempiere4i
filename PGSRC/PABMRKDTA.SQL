-- Table: pa_benchmarkdata

-- DROP TABLE pa_benchmarkdata;

CREATE TABLE pa_benchmarkdata FOR SYSTEM NAME pabmrkdta
(
  pa_benchmarkdata_id            FOR COLUMN pa_bmkdid       DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  pa_benchmark_id                FOR COLUMN pa_bmkid        DECIMAL(10,0) NOT NULL,
  benchmarkdate                  FOR COLUMN bmkdate         TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  benchmarkvalue                 FOR COLUMN bmrkval         DECFLOAT(16) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_benchmarkdata_pkey PRIMARY KEY (pa_benchmarkdata_id),
  CONSTRAINT pa_benchmarkdata_isactive_check CHECK (isactive in ('Y','N'))
)
;

