-- Table: k_source

-- DROP TABLE k_source;

CREATE TABLE k_source
(
  k_source_id                    FOR COLUMN k_sid           DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  name                                                      VARCHAR(60) NOT NULL,
  descriptionurl                 FOR COLUMN descurl         VARCHAR(120),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT k_source_pkey PRIMARY KEY (k_source_id),
  CONSTRAINT k_source_isactive_check CHECK (isactive in ('Y','N'))
)
;

