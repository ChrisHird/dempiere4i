-- Table: w_counter

-- DROP TABLE w_counter;

CREATE TABLE w_counter
(
  w_counter_id                   FOR COLUMN w_cid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  pageurl                                                   VARCHAR(120) NOT NULL,
  referrer                                                  VARCHAR(120),
  remote_host                    FOR COLUMN rmthost         VARCHAR(120),
  remote_addr                    FOR COLUMN rmtaddr         VARCHAR(60),
  useragent                                                 VARCHAR(255),
  acceptlanguage                 FOR COLUMN acptlng         VARCHAR(60),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  w_countercount_id              FOR COLUMN w_ctcid         DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  email                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_counter_pkey PRIMARY KEY (w_counter_id),
  CONSTRAINT w_counter_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT w_counter_processed_check CHECK (processed in ('Y','N'))
)
;

