-- Table: w_click

-- DROP TABLE w_click;

CREATE TABLE w_click
(
  w_click_id                                                DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  targeturl                                                 VARCHAR(120),
  referrer                                                  VARCHAR(120),
  remote_host                    FOR COLUMN rmthost         VARCHAR(120),
  remote_addr                    FOR COLUMN rmtaddr         VARCHAR(60),
  useragent                                                 VARCHAR(255),
  acceptlanguage                 FOR COLUMN acptlng         VARCHAR(60),
  processed                                                 CHAR(1) NOT NULL DEFAULT 'N',
  w_clickcount_id                FOR COLUMN w_ccid          DECIMAL(10,0),
  ad_user_id                                                DECIMAL(10,0),
  email                                                     VARCHAR(60),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT w_click_pkey PRIMARY KEY (w_click_id),
  CONSTRAINT w_click_isactive_check CHECK (isactive in ('Y','N')),
  CONSTRAINT w_click_processed_check CHECK (processed in ('Y','N'))
)
;

