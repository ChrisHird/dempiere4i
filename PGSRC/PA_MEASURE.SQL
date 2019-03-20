-- Table: pa_measure

-- DROP TABLE pa_measure;

CREATE TABLE pa_measure
(
  pa_measure_id                  FOR COLUMN pa_mid          DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  measuretype                    FOR COLUMN mtyp            CHAR(1) NOT NULL,
  manualactual                   FOR COLUMN mact            DECFLOAT(16),
  manualnote                                                VARCHAR(2000),
  calculationclass               FOR COLUMN calccls         VARCHAR(60),
  pa_measurecalc_id              FOR COLUMN pa_mcid         DECIMAL(10,0),
  pa_benchmark_id                FOR COLUMN pa_bmkid        DECIMAL(10,0),
  pa_ratio_id                    FOR COLUMN pa_ratioid      DECIMAL(10,0),
  pa_hierarchy_id                FOR COLUMN pa_heirid       DECIMAL(10,0),
  measuredatatype                FOR COLUMN mdatatyp        CHAR(1) NOT NULL,
  r_requesttype_id               FOR COLUMN r_rtid          DECIMAL(10,0),
  c_projecttype_id               FOR COLUMN c_prjtid        DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT pa_measure_pkey PRIMARY KEY (pa_measure_id),
  CONSTRAINT pa_measure_isactive_check CHECK (isactive in ('Y','N'))
)
;

