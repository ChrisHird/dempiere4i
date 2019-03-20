-- Table: ad_accesslog

-- DROP TABLE ad_accesslog;

CREATE TABLE ad_accesslog FOR SYSTEM NAME adaccl
(
  ad_accesslog_id                FOR COLUMN ad_alid         DECIMAL(10,0) NOT NULL,
  ad_client_id                   FOR COLUMN ad_cid          DECIMAL(10,0) NOT NULL,
  ad_org_id                                                 DECIMAL(10,0) NOT NULL,
  isactive                                                  CHAR(1) NOT NULL DEFAULT 'Y',
  created                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  createdby                                                 DECIMAL(10,0) NOT NULL,
  updated                                                   TIMESTAMP NOT NULL WITH DEFAULT CURRENT_TIMESTAMP,
  updatedby                                                 DECIMAL(10,0) NOT NULL,
  ad_table_id                    FOR COLUMN ad_tid          DECIMAL(10,0),
  ad_column_id                   FOR COLUMN ad_colid        DECIMAL(10,0),
  record_id                                                 DECIMAL(10,0),
  remote_addr                    FOR COLUMN rmtaddr         VARCHAR(60),
  remote_host                    FOR COLUMN rmthost         VARCHAR(60),
  description                    FOR COLUMN desc            VARCHAR(255),
  textmsg                                                   VARCHAR(2000),
  reply                                                     VARCHAR(2000),
  uuid                                                      VARCHAR(36) DEFAULT NULL,
  CONSTRAINT ad_accesslog_pkey PRIMARY KEY (ad_accesslog_id),
  CONSTRAINT ad_accesslog_isactive_check CHECK (isactive in ('Y','N'))
)
;

