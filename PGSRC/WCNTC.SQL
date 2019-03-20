-- Table: w_countercount

-- DROP TABLE w_countercount;

CREATE TABLE w_countercount FOR SYSTEM NAME wcntc
(
  w_countercount_id              FOR COLUMN w_ctcid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  description                    FOR COLUMN desc            VARCHAR(255),
  pageurl                                                   VARCHAR(120) NOT NULL,
  c_bpartner_id                  FOR COLUMN c_bpid          DECIMAL(10,0),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_countercount_pkey PRIMARY KEY (w_countercount_id),
  CONSTRAINT w_countercount_isactive_check CHECK (isactive in ('Y','N'))
)
;

