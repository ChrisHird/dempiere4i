-- Table: pa_benchmark

-- DROP TABLE pa_benchmark;

CREATE TABLE pa_benchmark FOR SYSTEM NAME pabmrk
(
  pa_benchmark_id                FOR COLUMN pa_bmkid        DECIMAL(10,0) NOT NULL,
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
  accumulationtype               FOR COLUMN acmtype         CHAR(1) NOT NULL,
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_benchmark_pkey PRIMARY KEY (pa_benchmark_id),
  CONSTRAINT pa_benchmark_isactive_check CHECK (isactive in ('Y','N'))
)
;

